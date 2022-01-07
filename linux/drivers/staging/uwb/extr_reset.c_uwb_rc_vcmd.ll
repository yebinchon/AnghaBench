; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwb_rc_vcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwb_rc_vcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_rccb = type { i32 }
%struct.uwb_rceb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_vcmd(%struct.uwb_rc* %0, i8* %1, %struct.uwb_rccb* %2, i64 %3, i32 %4, i32 %5, %struct.uwb_rceb** %6) #0 {
  %8 = alloca %struct.uwb_rc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.uwb_rccb*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.uwb_rceb**, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.uwb_rccb* %2, %struct.uwb_rccb** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.uwb_rceb** %6, %struct.uwb_rceb*** %14, align 8
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.uwb_rccb*, %struct.uwb_rccb** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.uwb_rceb**, %struct.uwb_rceb*** %14, align 8
  %22 = call i32 @__uwb_rc_cmd(%struct.uwb_rc* %15, i8* %16, %struct.uwb_rccb* %17, i64 %18, i32* null, i32 0, i32 %19, i32 %20, %struct.uwb_rceb** %21)
  ret i32 %22
}

declare dso_local i32 @__uwb_rc_cmd(%struct.uwb_rc*, i8*, %struct.uwb_rccb*, i64, i32*, i32, i32, i32, %struct.uwb_rceb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
