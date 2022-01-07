; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-ldisc.c_pps_tty_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-ldisc.c_pps_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.tty_driver* }
%struct.tty_driver = type { i32, i8*, i8* }
%struct.pps_source_info = type { i32, i32, i32, i32*, i32 }
%struct.pps_device = type { i32, %struct.tty_struct* }

@THIS_MODULE = common dso_local global i32 0, align 4
@PPS_MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/%s%d\00", align 1
@PPS_CAPTUREBOTH = common dso_local global i32 0, align 4
@PPS_OFFSETASSERT = common dso_local global i32 0, align 4
@PPS_OFFSETCLEAR = common dso_local global i32 0, align 4
@PPS_CANWAIT = common dso_local global i32 0, align 4
@PPS_TSFMT_TSPEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot register PPS source \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot open tty ldisc \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"source \22%s\22 added\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @pps_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pps_tty_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.pps_source_info, align 8
  %5 = alloca %struct.tty_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pps_device*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.tty_driver*, %struct.tty_driver** %10, align 8
  store %struct.tty_driver* %11, %struct.tty_driver** %5, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %16 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %4, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %4, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %4, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PPS_MAX_NAME_LEN, align 4
  %25 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %26 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @snprintf(i32 %23, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PPS_MAX_NAME_LEN, align 4
  %33 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %34 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @snprintf(i32 %31, i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* @PPS_CAPTUREBOTH, align 4
  %39 = load i32, i32* @PPS_OFFSETASSERT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PPS_OFFSETCLEAR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PPS_CANWAIT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PPS_TSFMT_TSPEC, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %4, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @PPS_CAPTUREBOTH, align 4
  %49 = load i32, i32* @PPS_OFFSETASSERT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PPS_OFFSETCLEAR, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.pps_device* @pps_register_source(%struct.pps_source_info* %4, i32 %52)
  store %struct.pps_device* %53, %struct.pps_device** %7, align 8
  %54 = load %struct.pps_device*, %struct.pps_device** %7, align 8
  %55 = call i64 @IS_ERR(%struct.pps_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.pps_device*, %struct.pps_device** %7, align 8
  %62 = call i32 @PTR_ERR(%struct.pps_device* %61)
  store i32 %62, i32* %2, align 4
  br label %86

63:                                               ; preds = %1
  %64 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %65 = load %struct.pps_device*, %struct.pps_device** %7, align 8
  %66 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %65, i32 0, i32 1
  store %struct.tty_struct* %64, %struct.tty_struct** %66, align 8
  %67 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %68 = call i32 @alias_n_tty_open(%struct.tty_struct* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %4, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %82

75:                                               ; preds = %63
  %76 = load %struct.pps_device*, %struct.pps_device** %7, align 8
  %77 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %4, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_info(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  store i32 0, i32* %2, align 4
  br label %86

82:                                               ; preds = %71
  %83 = load %struct.pps_device*, %struct.pps_device** %7, align 8
  %84 = call i32 @pps_unregister_source(%struct.pps_device* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %75, %57
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local %struct.pps_device* @pps_register_source(%struct.pps_source_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.pps_device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.pps_device*) #1

declare dso_local i32 @alias_n_tty_open(%struct.tty_struct*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @pps_unregister_source(%struct.pps_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
