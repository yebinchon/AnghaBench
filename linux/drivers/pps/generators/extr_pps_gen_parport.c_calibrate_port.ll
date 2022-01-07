; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/generators/extr_pps_gen_parport.c_calibrate_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/generators/extr_pps_gen_parport.c_calibrate_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_generator_pp = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.parport* }
%struct.parport = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.parport*, i32)* }
%struct.timespec64 = type { i32 }

@PORT_NTESTS_SHIFT = common dso_local global i32 0, align 4
@NO_SIGNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"port write takes %ldns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pps_generator_pp*)* @calibrate_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calibrate_port(%struct.pps_generator_pp* %0) #0 {
  %2 = alloca %struct.pps_generator_pp*, align 8
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec64, align 4
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.timespec64, align 4
  store %struct.pps_generator_pp* %0, %struct.pps_generator_pp** %2, align 8
  %10 = load %struct.pps_generator_pp*, %struct.pps_generator_pp** %2, align 8
  %11 = getelementptr inbounds %struct.pps_generator_pp, %struct.pps_generator_pp* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.parport*, %struct.parport** %13, align 8
  store %struct.parport* %14, %struct.parport** %3, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %46, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PORT_NTESTS_SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = call i32 @ktime_get_real_ts64(%struct.timespec64* %6)
  %24 = load %struct.parport*, %struct.parport** %3, align 8
  %25 = getelementptr inbounds %struct.parport, %struct.parport* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.parport*, i32)*, i32 (%struct.parport*, i32)** %27, align 8
  %29 = load %struct.parport*, %struct.parport** %3, align 8
  %30 = load i32, i32* @NO_SIGNAL, align 4
  %31 = call i32 %28(%struct.parport* %29, i32 %30)
  %32 = call i32 @ktime_get_real_ts64(%struct.timespec64* %7)
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @local_irq_restore(i64 %33)
  %35 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @timespec64_sub(i32 %36, i32 %38)
  %40 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.timespec64* %7 to i8*
  %42 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = call i64 @timespec64_to_ns(%struct.timespec64* %7)
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %20
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %15

49:                                               ; preds = %15
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @PORT_NTESTS_SHIFT, align 4
  %52 = zext i32 %51 to i64
  %53 = ashr i64 %50, %52
  %54 = load %struct.pps_generator_pp*, %struct.pps_generator_pp** %2, align 8
  %55 = getelementptr inbounds %struct.pps_generator_pp, %struct.pps_generator_pp* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.pps_generator_pp*, %struct.pps_generator_pp** %2, align 8
  %57 = getelementptr inbounds %struct.pps_generator_pp, %struct.pps_generator_pp* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %58)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @timespec64_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec64_to_ns(%struct.timespec64*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
