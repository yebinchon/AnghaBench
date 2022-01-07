; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_old_get_pfi_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_old_get_pfi_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@NI_PFI_OUTPUT_AI_START1 = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_AI_START2 = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_AI_CONVERT = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_G_SRC1 = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_G_GATE1 = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_AO_UPDATE_N = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_AO_START1 = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_AI_START_PULSE = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_G_SRC0 = common dso_local global i32 0, align 4
@NI_PFI_OUTPUT_G_GATE0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bug, unhandled case in switch.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @ni_old_get_pfi_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_old_get_pfi_routing(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %27 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
    i32 5, label %17
    i32 6, label %19
    i32 7, label %21
    i32 8, label %23
    i32 9, label %25
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @NI_PFI_OUTPUT_AI_START1, align 4
  store i32 %8, i32* %3, align 4
  br label %33

9:                                                ; preds = %2
  %10 = load i32, i32* @NI_PFI_OUTPUT_AI_START2, align 4
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* @NI_PFI_OUTPUT_AI_CONVERT, align 4
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @NI_PFI_OUTPUT_G_SRC1, align 4
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i32, i32* @NI_PFI_OUTPUT_G_GATE1, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* @NI_PFI_OUTPUT_AO_UPDATE_N, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* @NI_PFI_OUTPUT_AO_START1, align 4
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load i32, i32* @NI_PFI_OUTPUT_AI_START_PULSE, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @NI_PFI_OUTPUT_G_SRC0, align 4
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load i32, i32* @NI_PFI_OUTPUT_G_GATE0, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
