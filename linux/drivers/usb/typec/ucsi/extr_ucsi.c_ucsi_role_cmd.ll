; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_role_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_role_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_connector = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ucsi_control = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@UCSI_ENABLE_NTFY_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_connector*, %struct.ucsi_control*)* @ucsi_role_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_role_cmd(%struct.ucsi_connector* %0, %struct.ucsi_control* %1) #0 {
  %3 = alloca %struct.ucsi_connector*, align 8
  %4 = alloca %struct.ucsi_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucsi_control, align 4
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %3, align 8
  store %struct.ucsi_control* %1, %struct.ucsi_control** %4, align 8
  %7 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %8 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load %struct.ucsi_control*, %struct.ucsi_control** %4, align 8
  %11 = call i32 @ucsi_send_command(%struct.TYPE_3__* %9, %struct.ucsi_control* %10, i32* null, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ETIMEDOUT, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %18 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %23 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @ucsi_reset_ppm(%struct.TYPE_3__* %24)
  %26 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %27 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* @UCSI_ENABLE_NTFY_ALL, align 4
  %32 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @UCSI_CMD_SET_NTFY_ENABLE(i32 %33, i32 %31)
  %35 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %36 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @ucsi_send_command(%struct.TYPE_3__* %37, %struct.ucsi_control* %6, i32* null, i32 0)
  %39 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %40 = call i32 @ucsi_reset_connector(%struct.ucsi_connector* %39, i32 1)
  br label %41

41:                                               ; preds = %16, %2
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @ucsi_send_command(%struct.TYPE_3__*, %struct.ucsi_control*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ucsi_reset_ppm(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @UCSI_CMD_SET_NTFY_ENABLE(i32, i32) #1

declare dso_local i32 @ucsi_reset_connector(%struct.ucsi_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
