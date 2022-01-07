; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi = type { i32 }
%struct.ucsi_control = type { i32 }

@UCSI_ENABLE_NTFY_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucsi_resume(%struct.ucsi* %0) #0 {
  %2 = alloca %struct.ucsi*, align 8
  %3 = alloca %struct.ucsi_control, align 4
  store %struct.ucsi* %0, %struct.ucsi** %2, align 8
  %4 = load i32, i32* @UCSI_ENABLE_NTFY_ALL, align 4
  %5 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @UCSI_CMD_SET_NTFY_ENABLE(i32 %6, i32 %4)
  %8 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %9 = call i32 @ucsi_send_command(%struct.ucsi* %8, %struct.ucsi_control* %3, i32* null, i32 0)
  ret i32 %9
}

declare dso_local i32 @UCSI_CMD_SET_NTFY_ENABLE(i32, i32) #1

declare dso_local i32 @ucsi_send_command(%struct.ucsi*, %struct.ucsi_control*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
