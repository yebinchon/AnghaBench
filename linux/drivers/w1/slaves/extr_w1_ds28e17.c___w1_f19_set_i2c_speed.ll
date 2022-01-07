; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c___w1_f19_set_i2c_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c___w1_f19_set_i2c_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32, i32, %struct.w1_f19_data* }
%struct.w1_f19_data = type { i64 }

@__const.__w1_f19_set_i2c_speed.i2c_speeds = private unnamed_addr constant [3 x i32] [i32 100, i32 400, i32 900], align 4
@EIO = common dso_local global i32 0, align 4
@W1_F19_WRITE_CONFIGURATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"i2c speed set to %d kBaud\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i64)* @__w1_f19_set_i2c_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__w1_f19_set_i2c_speed(%struct.w1_slave* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w1_slave*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.w1_f19_data*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca [2 x i64], align 16
  store %struct.w1_slave* %0, %struct.w1_slave** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %10 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %9, i32 0, i32 2
  %11 = load %struct.w1_f19_data*, %struct.w1_f19_data** %10, align 8
  store %struct.w1_f19_data* %11, %struct.w1_f19_data** %6, align 8
  %12 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast ([3 x i32]* @__const.__w1_f19_set_i2c_speed.i2c_speeds to i8*), i64 12, i1 false)
  %13 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %14 = call i64 @w1_reset_select_slave(%struct.w1_slave* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i64, i64* @W1_F19_WRITE_CONFIGURATION, align 8
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %20, i64* %21, align 16
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %22, i64* %23, align 8
  %24 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %25 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %28 = call i32 @w1_write_block(i32 %26, i64* %27, i32 2)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.w1_f19_data*, %struct.w1_f19_data** %6, align 8
  %31 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %33 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %19, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #2

declare dso_local i32 @w1_write_block(i32, i64*, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
