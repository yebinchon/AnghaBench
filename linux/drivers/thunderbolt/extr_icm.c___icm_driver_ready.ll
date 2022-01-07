; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c___icm_driver_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c___icm_driver_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm = type { i32 (%struct.tb*, i32*, i64*, i32*)* }
%struct.tb_cfg_result = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to send driver ready to ICM\0A\00", align 1
@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to read root switch config space, giving up\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, i32*, i64*, i32*)* @__icm_driver_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__icm_driver_ready(%struct.tb* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.icm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tb_cfg_result, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tb_cfg_result, align 4
  store %struct.tb* %0, %struct.tb** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.tb*, %struct.tb** %6, align 8
  %17 = call %struct.icm* @tb_priv(%struct.tb* %16)
  store %struct.icm* %17, %struct.icm** %10, align 8
  store i32 50, i32* %11, align 4
  %18 = load %struct.icm*, %struct.icm** %10, align 8
  %19 = getelementptr inbounds %struct.icm, %struct.icm* %18, i32 0, i32 0
  %20 = load i32 (%struct.tb*, i32*, i64*, i32*)*, i32 (%struct.tb*, i32*, i64*, i32*)** %19, align 8
  %21 = load %struct.tb*, %struct.tb** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 %20(%struct.tb* %21, i32* %22, i64* %23, i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.tb*, %struct.tb** %6, align 8
  %30 = call i32 @tb_err(%struct.tb* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %57

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load %struct.tb*, %struct.tb** %6, align 8
  %35 = getelementptr inbounds %struct.tb, %struct.tb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TB_CFG_SWITCH, align 4
  %38 = call i32 @tb_cfg_read_raw(i32 %36, i32* %14, i32 0, i32 0, i32 %37, i32 0, i32 1, i32 100)
  %39 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %15, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.tb_cfg_result* %13 to i8*
  %41 = bitcast %struct.tb_cfg_result* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %57

46:                                               ; preds = %33
  %47 = call i32 @msleep(i32 50)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %33, label %52

52:                                               ; preds = %48
  %53 = load %struct.tb*, %struct.tb** %6, align 8
  %54 = call i32 @tb_err(%struct.tb* %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %45, %28
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.icm* @tb_priv(%struct.tb*) #1

declare dso_local i32 @tb_err(%struct.tb*, i8*) #1

declare dso_local i32 @tb_cfg_read_raw(i32, i32*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
