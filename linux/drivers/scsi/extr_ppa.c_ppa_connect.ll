; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ppa.c_ppa_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ppa.c_ppa_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i32 }

@CONNECT_EPP_MAYBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @ppa_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppa_connect(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 4
  store i16 %8, i16* %5, align 2
  %9 = load i16, i16* %5, align 2
  %10 = call i32 @ppa_c_pulse(i16 zeroext %9, i32 0)
  %11 = load i16, i16* %5, align 2
  %12 = call i32 @ppa_c_pulse(i16 zeroext %11, i32 60)
  %13 = load i16, i16* %5, align 2
  %14 = call i32 @ppa_c_pulse(i16 zeroext %13, i32 32)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CONNECT_EPP_MAYBE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IN_EPP_MODE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i16, i16* %5, align 2
  %26 = call i32 @ppa_c_pulse(i16 zeroext %25, i32 207)
  br label %30

27:                                               ; preds = %18, %2
  %28 = load i16, i16* %5, align 2
  %29 = call i32 @ppa_c_pulse(i16 zeroext %28, i32 143)
  br label %30

30:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @ppa_c_pulse(i16 zeroext, i32) #1

declare dso_local i64 @IN_EPP_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
