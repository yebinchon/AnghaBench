; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.amvdec_ops* }
%struct.amvdec_ops = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amvdec_session*)* @vdec_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_poweron(%struct.amvdec_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amvdec_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amvdec_ops*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %3, align 8
  %6 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %7 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.amvdec_ops*, %struct.amvdec_ops** %9, align 8
  store %struct.amvdec_ops* %10, %struct.amvdec_ops** %5, align 8
  %11 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %12 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_prepare_enable(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  %22 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %23 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %51

31:                                               ; preds = %21
  %32 = load %struct.amvdec_ops*, %struct.amvdec_ops** %5, align 8
  %33 = getelementptr inbounds %struct.amvdec_ops, %struct.amvdec_ops* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.amvdec_session*)**
  %35 = load i32 (%struct.amvdec_session*)*, i32 (%struct.amvdec_session*)** %34, align 8
  %36 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %37 = call i32 %35(%struct.amvdec_session* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %44

41:                                               ; preds = %31
  %42 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %43 = call i32 @esparser_power_up(%struct.amvdec_session* %42)
  store i32 0, i32* %2, align 4
  br label %59

44:                                               ; preds = %40
  %45 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %46 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_disable_unprepare(i32 %49)
  br label %51

51:                                               ; preds = %44, %30
  %52 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %53 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clk_disable_unprepare(i32 %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %51, %41, %19
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @esparser_power_up(%struct.amvdec_session*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
