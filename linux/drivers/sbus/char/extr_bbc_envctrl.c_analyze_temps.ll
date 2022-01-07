; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_analyze_temps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_analyze_temps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_cpu_temperature = type { i32, i64, i8*, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bbc_cpu_temperature*, i64*)* @analyze_temps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_temps(%struct.bbc_cpu_temperature* %0, i64* %1) #0 {
  %3 = alloca %struct.bbc_cpu_temperature*, align 8
  %4 = alloca i64*, align 8
  store %struct.bbc_cpu_temperature* %0, %struct.bbc_cpu_temperature** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %6 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %5, i32 0, i32 4
  %7 = load i8*, i8** %6, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %10 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = add nsw i32 %8, %12
  %14 = sdiv i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %18 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %20 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %24 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = add nsw i32 %22, %26
  %28 = sdiv i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %32 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %36 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @analyze_ambient_temp(%struct.bbc_cpu_temperature* %33, i64* %34, i32 %37)
  %39 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %42 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @analyze_cpu_temp(%struct.bbc_cpu_temperature* %39, i64* %40, i32 %43)
  %45 = load %struct.bbc_cpu_temperature*, %struct.bbc_cpu_temperature** %3, align 8
  %46 = getelementptr inbounds %struct.bbc_cpu_temperature, %struct.bbc_cpu_temperature* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  ret void
}

declare dso_local i32 @analyze_ambient_temp(%struct.bbc_cpu_temperature*, i64*, i32) #1

declare dso_local i32 @analyze_cpu_temp(%struct.bbc_cpu_temperature*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
