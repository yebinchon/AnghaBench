; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_get_sense_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_get_sense_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i8*, i32, i32, i32, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SCF_SENT_CHECK_CONDITION = common dso_local global i32 0, align 4
@TRANSPORT_SENSE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"HBA_[%u]_PLUG[%s]: Requesting sense for SAM STATUS: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.se_cmd*)* @transport_get_sense_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @transport_get_sense_buffer(%struct.se_cmd* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 5
  %7 = load %struct.se_device*, %struct.se_device** %6, align 8
  store %struct.se_device* %7, %struct.se_device** %4, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.se_device*, %struct.se_device** %4, align 8
  %16 = icmp ne %struct.se_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SCF_SENT_CHECK_CONDITION, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i8* null, i8** %2, align 8
  br label %47

26:                                               ; preds = %18
  %27 = load i32, i32* @TRANSPORT_SENSE_BUFFER, align 4
  %28 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.se_device*, %struct.se_device** %4, align 8
  %31 = getelementptr inbounds %struct.se_device, %struct.se_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.se_device*, %struct.se_device** %4, align 8
  %36 = getelementptr inbounds %struct.se_device, %struct.se_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39, i32 %42)
  %44 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %2, align 8
  br label %47

47:                                               ; preds = %26, %25, %17
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
