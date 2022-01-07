; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_alloc_ctrl_desc_chains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_alloc_ctrl_desc_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i8*, i32, i32, i8*, i32, i8**, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @dwc2_gadget_alloc_ctrl_desc_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_gadget_alloc_ctrl_desc_chains(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %4 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %5 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 6
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @dmam_alloc_coherent(i32 %6, i32 4, i32* %10, i32 %11)
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 5
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  store i8* %12, i8** %16, align 8
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 5
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %76

24:                                               ; preds = %1
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @dmam_alloc_coherent(i32 %27, i32 4, i32* %31, i32 %32)
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %34, i32 0, i32 5
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  store i8* %33, i8** %37, align 8
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 5
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %24
  br label %76

45:                                               ; preds = %24
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %50 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %49, i32 0, i32 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @dmam_alloc_coherent(i32 %48, i32 4, i32* %50, i32 %51)
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %54 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %56 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  br label %76

60:                                               ; preds = %45
  %61 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %62 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %65 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %64, i32 0, i32 1
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @dmam_alloc_coherent(i32 %63, i32 4, i32* %65, i32 %66)
  %68 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %69 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %71 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %76

75:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %79

76:                                               ; preds = %74, %59, %44, %23
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i8* @dmam_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
