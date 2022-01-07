; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_put_tlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_put_tlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcon_link = type { i32, i32, i32 }

@TCON_LINK_IN_TREE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_put_tlink(%struct.tcon_link* %0) #0 {
  %2 = alloca %struct.tcon_link*, align 8
  store %struct.tcon_link* %0, %struct.tcon_link** %2, align 8
  %3 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %4 = icmp ne %struct.tcon_link* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %7 = call i64 @IS_ERR(%struct.tcon_link* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  br label %37

10:                                               ; preds = %5
  %11 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %12 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %11, i32 0, i32 2
  %13 = call i32 @atomic_dec_and_test(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @TCON_LINK_IN_TREE, align 4
  %17 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %18 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %10
  %22 = load i32, i32* @jiffies, align 4
  %23 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %24 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %37

25:                                               ; preds = %15
  %26 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %27 = call %struct.tcon_link* @tlink_tcon(%struct.tcon_link* %26)
  %28 = call i64 @IS_ERR(%struct.tcon_link* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %32 = call %struct.tcon_link* @tlink_tcon(%struct.tcon_link* %31)
  %33 = call i32 @cifs_put_tcon(%struct.tcon_link* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %36 = call i32 @kfree(%struct.tcon_link* %35)
  br label %37

37:                                               ; preds = %34, %21, %9
  ret void
}

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.tcon_link* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @cifs_put_tcon(%struct.tcon_link*) #1

declare dso_local i32 @kfree(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
