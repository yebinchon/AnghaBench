; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_smtc_map_smem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_smtc_map_smem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smtcfb_info = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@big_addr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"%s: unable to map screen memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smtcfb_info*, %struct.pci_dev*, i32)* @smtc_map_smem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtc_map_smem(%struct.smtcfb_info* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smtcfb_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.smtcfb_info* %0, %struct.smtcfb_info** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %9 = call i32 @pci_resource_start(%struct.pci_dev* %8, i32 0)
  %10 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %11 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %9, i32* %14, align 4
  %15 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %16 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1824
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %21 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 2097152
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %19, %3
  %28 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %29 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load i64, i64* @big_addr, align 8
  %37 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %38 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %36
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  br label %46

46:                                               ; preds = %35, %27
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %49 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %47, i32* %52, align 4
  %53 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %54 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %57 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %61 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %46
  %67 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load %struct.smtcfb_info*, %struct.smtcfb_info** %5, align 8
  %70 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %66
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
