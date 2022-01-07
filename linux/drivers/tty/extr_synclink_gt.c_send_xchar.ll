; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_send_xchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_send_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.slgt_info* }
%struct.slgt_info = type { i8, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"send_xchar\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s send_xchar(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @send_xchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_xchar(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.slgt_info*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.slgt_info*, %struct.slgt_info** %8, align 8
  store %struct.slgt_info* %9, %struct.slgt_info** %5, align 8
  %10 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @sanity_check(%struct.slgt_info* %10, i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %19 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @DBGINFO(i8* %23)
  %25 = load i8, i8* %4, align 1
  %26 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 0
  store i8 %25, i8* %27, align 4
  %28 = load i8, i8* %4, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %17
  %31 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %32 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %31, i32 0, i32 1
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %41 = call i32 @tx_start(%struct.slgt_info* %40)
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %44 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %43, i32 0, i32 1
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %16, %42, %17
  ret void
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tx_start(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
