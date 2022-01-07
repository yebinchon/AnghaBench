; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_free_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-download.c_free_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_download = type { i32 }
%struct.fw_request = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_download*, %struct.fw_request*)* @free_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_firmware(%struct.fw_download* %0, %struct.fw_request* %1) #0 {
  %3 = alloca %struct.fw_download*, align 8
  %4 = alloca %struct.fw_request*, align 8
  store %struct.fw_download* %0, %struct.fw_download** %3, align 8
  store %struct.fw_request* %1, %struct.fw_request** %4, align 8
  %5 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %6 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.fw_download*, %struct.fw_download** %3, align 8
  %12 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %15 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.fw_download*, %struct.fw_download** %3, align 8
  %18 = getelementptr inbounds %struct.fw_download, %struct.fw_download* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %21 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %23 = call i32 @put_fw_req(%struct.fw_request* %22)
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_fw_req(%struct.fw_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
