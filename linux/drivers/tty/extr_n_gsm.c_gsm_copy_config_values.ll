; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_copy_config_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_copy_config_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gsm_config = type { i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@UIH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Ftype %d i %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_mux*, %struct.gsm_config*)* @gsm_copy_config_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_copy_config_values(%struct.gsm_mux* %0, %struct.gsm_config* %1) #0 {
  %3 = alloca %struct.gsm_mux*, align 8
  %4 = alloca %struct.gsm_config*, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %3, align 8
  store %struct.gsm_config* %1, %struct.gsm_config** %4, align 8
  %5 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %6 = call i32 @memset(%struct.gsm_config* %5, i32 0, i32 64)
  %7 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %8 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %11 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 8
  %12 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %13 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %16 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %18 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %21 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %23 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %26 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %28 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %31 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %33 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %35 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %38 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %40 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UIH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %46 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %50

47:                                               ; preds = %2
  %48 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %49 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %48, i32 0, i32 0
  store i32 2, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %52 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %55 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %56)
  %58 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %59 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %62 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %64 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %67 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.gsm_config*, %struct.gsm_config** %4, align 8
  %69 = getelementptr inbounds %struct.gsm_config, %struct.gsm_config* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  ret void
}

declare dso_local i32 @memset(%struct.gsm_config*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
