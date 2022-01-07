; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_save_cur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_save_cur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @save_cur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_cur(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %4 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 20
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 21
  store i32 %5, i32* %7, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 18
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 19
  store i32 %10, i32* %12, align 4
  %13 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 16
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 17
  store i32 %15, i32* %17, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 15
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 13
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
