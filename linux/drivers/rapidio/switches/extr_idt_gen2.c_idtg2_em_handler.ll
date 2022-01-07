; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_em_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_em_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i64 }

@RIO_EM_LTL_ERR_DETECT = common dso_local global i64 0, align 8
@REM_LTL_ERR_IMPSPEC = common dso_local global i32 0, align 4
@IDT_ISLTL_ADDRESS_CAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"RIO: %s Implementation Specific LTL errors 0x%x @(0x%x)\0A\00", align 1
@REM_PED_IMPL_SPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"RIO: %s Implementation Specific Port errors 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_dev*, i32)* @idtg2_em_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtg2_em_handler(%struct.rio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rio_dev* %0, %struct.rio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %9 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RIO_EM_LTL_ERR_DETECT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @rio_read_config_32(%struct.rio_dev* %8, i64 %13, i32* %7)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @REM_LTL_ERR_IMPSPEC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %24 = load i64, i64* @IDT_ISLTL_ADDRESS_CAP, align 8
  %25 = call i32 @rio_read_config_32(%struct.rio_dev* %23, i64 %24, i32* %5)
  %26 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %27 = call i32 @rio_name(%struct.rio_dev* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %32 = load i64, i64* @IDT_ISLTL_ADDRESS_CAP, align 8
  %33 = call i32 @rio_write_config_32(%struct.rio_dev* %31, i64 %32, i32 0)
  br label %34

34:                                               ; preds = %22, %17
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %37 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @RIO_EM_PN_ERR_DETECT(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @rio_read_config_32(%struct.rio_dev* %36, i64 %42, i32* %6)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @REM_PED_IMPL_SPEC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @IDT_PORT_ISERR_DET(i32 %53)
  %55 = call i32 @rio_read_config_32(%struct.rio_dev* %52, i64 %54, i32* %5)
  %56 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %57 = call i32 @rio_name(%struct.rio_dev* %56)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @IDT_PORT_ISERR_DET(i32 %61)
  %63 = call i32 @rio_write_config_32(%struct.rio_dev* %60, i64 %62, i32 0)
  br label %64

64:                                               ; preds = %51, %46
  br label %65

65:                                               ; preds = %64, %35
  ret i32 0
}

declare dso_local i32 @rio_read_config_32(%struct.rio_dev*, i64, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @rio_name(%struct.rio_dev*) #1

declare dso_local i32 @rio_write_config_32(%struct.rio_dev*, i64, i32) #1

declare dso_local i64 @RIO_EM_PN_ERR_DETECT(i32) #1

declare dso_local i64 @IDT_PORT_ISERR_DET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
