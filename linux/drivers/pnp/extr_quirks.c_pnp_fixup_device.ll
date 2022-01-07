; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_quirks.c_pnp_fixup_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_quirks.c_pnp_fixup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_fixup = type { i32 (%struct.pnp_dev.0*)*, i64* }
%struct.pnp_dev.0 = type opaque
%struct.pnp_dev = type { i32, i32 }

@pnp_fixups = common dso_local global %struct.pnp_fixup* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s: calling %pS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnp_fixup_device(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.pnp_fixup*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %4 = load %struct.pnp_fixup*, %struct.pnp_fixup** @pnp_fixups, align 8
  store %struct.pnp_fixup* %4, %struct.pnp_fixup** %3, align 8
  br label %5

5:                                                ; preds = %38, %1
  %6 = load %struct.pnp_fixup*, %struct.pnp_fixup** %3, align 8
  %7 = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %5
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pnp_fixup*, %struct.pnp_fixup** %3, align 8
  %16 = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 @compare_pnp_id(i32 %14, i64* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %38

21:                                               ; preds = %11
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %22, i32 0, i32 0
  %24 = load %struct.pnp_fixup*, %struct.pnp_fixup** %3, align 8
  %25 = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.pnp_fixup*, %struct.pnp_fixup** %3, align 8
  %28 = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %27, i32 0, i32 0
  %29 = load i32 (%struct.pnp_dev.0*)*, i32 (%struct.pnp_dev.0*)** %28, align 8
  %30 = bitcast i32 (%struct.pnp_dev.0*)* %29 to i32 (%struct.pnp_dev*)*
  %31 = call i32 @pnp_dbg(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64* %26, i32 (%struct.pnp_dev*)* %30)
  %32 = load %struct.pnp_fixup*, %struct.pnp_fixup** %3, align 8
  %33 = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %32, i32 0, i32 0
  %34 = load i32 (%struct.pnp_dev.0*)*, i32 (%struct.pnp_dev.0*)** %33, align 8
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %36 = bitcast %struct.pnp_dev* %35 to %struct.pnp_dev.0*
  %37 = call i32 %34(%struct.pnp_dev.0* %36)
  br label %38

38:                                               ; preds = %21, %20
  %39 = load %struct.pnp_fixup*, %struct.pnp_fixup** %3, align 8
  %40 = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %39, i32 1
  store %struct.pnp_fixup* %40, %struct.pnp_fixup** %3, align 8
  br label %5

41:                                               ; preds = %5
  ret void
}

declare dso_local i32 @compare_pnp_id(i32, i64*) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i64*, i32 (%struct.pnp_dev*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
