; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gs_fpgaboot/extr_gs_fpgaboot.c_gs_load_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gs_fpgaboot/extr_gs_fpgaboot.c_gs_load_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fpgaimage = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"load fpgaimage %s\0A\00", align 1
@firmware_pdev = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"firmware %s is missing, cannot continue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpgaimage*, i8*)* @gs_load_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_load_image(%struct.fpgaimage* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpgaimage*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.fpgaimage* %0, %struct.fpgaimage** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load %struct.fpgaimage*, %struct.fpgaimage** %4, align 8
  %10 = getelementptr inbounds %struct.fpgaimage, %struct.fpgaimage* %9, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @firmware_pdev, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @request_firmware(i32* %10, i8* %11, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @request_firmware(i32*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
