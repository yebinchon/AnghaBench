; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_ps2.c_ps2_startstreaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_ps2.c_ps2_startstreaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.serio = type { i32 }

@NVEC_PS2 = common dso_local global i8 0, align 1
@AUTO_RECEIVE_N = common dso_local global i8 0, align 1
@PACKET_SIZE = common dso_local global i8 0, align 1
@ps2_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*)* @ps2_startstreaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_startstreaming(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca [3 x i8], align 1
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %5 = load i8, i8* @NVEC_PS2, align 1
  store i8 %5, i8* %4, align 1
  %6 = getelementptr inbounds i8, i8* %4, i64 1
  %7 = load i8, i8* @AUTO_RECEIVE_N, align 1
  store i8 %7, i8* %6, align 1
  %8 = getelementptr inbounds i8, i8* %6, i64 1
  %9 = load i8, i8* @PACKET_SIZE, align 1
  store i8 %9, i8* %8, align 1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps2_dev, i32 0, i32 0), align 4
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %12 = call i32 @nvec_write_async(i32 %10, i8* %11, i32 3)
  ret i32 %12
}

declare dso_local i32 @nvec_write_async(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
