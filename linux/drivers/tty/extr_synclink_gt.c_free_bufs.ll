; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_free_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_free_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32 }
%struct.slgt_desc = type { i32*, i32 }

@DMABUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*, %struct.slgt_desc*, i32)* @free_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_bufs(%struct.slgt_info* %0, %struct.slgt_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.slgt_info*, align 8
  %5 = alloca %struct.slgt_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %4, align 8
  store %struct.slgt_desc* %1, %struct.slgt_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %44, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load %struct.slgt_desc*, %struct.slgt_desc** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %13, i64 %15
  %17 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %44

21:                                               ; preds = %12
  %22 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %23 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DMABUFSIZE, align 4
  %26 = load %struct.slgt_desc*, %struct.slgt_desc** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %26, i64 %28
  %30 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.slgt_desc*, %struct.slgt_desc** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %32, i64 %34
  %36 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pci_free_consistent(i32 %24, i32 %25, i32* %31, i32 %37)
  %39 = load %struct.slgt_desc*, %struct.slgt_desc** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %39, i64 %41
  %43 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %21, %20
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %8

47:                                               ; preds = %8
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
