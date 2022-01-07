; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.amvdec_codec_ops*, %struct.amvdec_ops* }
%struct.amvdec_codec_ops = type { i32 (%struct.amvdec_session*)* }
%struct.amvdec_ops = type { i32 (%struct.amvdec_session*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amvdec_session*)* @vdec_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_poweroff(%struct.amvdec_session* %0) #0 {
  %2 = alloca %struct.amvdec_session*, align 8
  %3 = alloca %struct.amvdec_ops*, align 8
  %4 = alloca %struct.amvdec_codec_ops*, align 8
  store %struct.amvdec_session* %0, %struct.amvdec_session** %2, align 8
  %5 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %6 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.amvdec_ops*, %struct.amvdec_ops** %8, align 8
  store %struct.amvdec_ops* %9, %struct.amvdec_ops** %3, align 8
  %10 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %11 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %13, align 8
  store %struct.amvdec_codec_ops* %14, %struct.amvdec_codec_ops** %4, align 8
  %15 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %16 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %18 = call i32 @vdec_wait_inactive(%struct.amvdec_session* %17)
  %19 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %4, align 8
  %20 = getelementptr inbounds %struct.amvdec_codec_ops, %struct.amvdec_codec_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.amvdec_session*)*, i32 (%struct.amvdec_session*)** %20, align 8
  %22 = icmp ne i32 (%struct.amvdec_session*)* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %4, align 8
  %25 = getelementptr inbounds %struct.amvdec_codec_ops, %struct.amvdec_codec_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.amvdec_session*)*, i32 (%struct.amvdec_session*)** %25, align 8
  %27 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %28 = call i32 %26(%struct.amvdec_session* %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.amvdec_ops*, %struct.amvdec_ops** %3, align 8
  %31 = getelementptr inbounds %struct.amvdec_ops, %struct.amvdec_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.amvdec_session*)*, i32 (%struct.amvdec_session*)** %31, align 8
  %33 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %34 = call i32 %32(%struct.amvdec_session* %33)
  %35 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %36 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  %41 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %42 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  ret void
}

declare dso_local i32 @vdec_wait_inactive(%struct.amvdec_session*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
