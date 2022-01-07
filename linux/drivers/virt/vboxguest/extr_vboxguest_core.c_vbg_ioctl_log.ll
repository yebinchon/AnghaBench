; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_ioctl_log = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_ioctl_log*)* @vbg_ioctl_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_log(%struct.vbg_ioctl_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vbg_ioctl_log*, align 8
  store %struct.vbg_ioctl_log* %0, %struct.vbg_ioctl_log** %3, align 8
  %4 = load %struct.vbg_ioctl_log*, %struct.vbg_ioctl_log** %3, align 8
  %5 = getelementptr inbounds %struct.vbg_ioctl_log, %struct.vbg_ioctl_log* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ne i64 %8, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.vbg_ioctl_log*, %struct.vbg_ioctl_log** %3, align 8
  %15 = getelementptr inbounds %struct.vbg_ioctl_log, %struct.vbg_ioctl_log* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.vbg_ioctl_log*, %struct.vbg_ioctl_log** %3, align 8
  %22 = getelementptr inbounds %struct.vbg_ioctl_log, %struct.vbg_ioctl_log* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vbg_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %13, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @vbg_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
