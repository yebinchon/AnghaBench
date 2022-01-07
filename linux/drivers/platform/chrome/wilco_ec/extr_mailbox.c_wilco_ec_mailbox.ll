; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_mailbox.c_wilco_ec_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_mailbox.c_wilco_ec_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilco_ec_device = type { i32, %struct.wilco_ec_request*, i32 }
%struct.wilco_ec_request = type { i32 }
%struct.wilco_ec_message = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"type=%04x flags=%02x rslen=%zu rqlen=%zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilco_ec_mailbox(%struct.wilco_ec_device* %0, %struct.wilco_ec_message* %1) #0 {
  %3 = alloca %struct.wilco_ec_device*, align 8
  %4 = alloca %struct.wilco_ec_message*, align 8
  %5 = alloca %struct.wilco_ec_request*, align 8
  %6 = alloca i32, align 4
  store %struct.wilco_ec_device* %0, %struct.wilco_ec_device** %3, align 8
  store %struct.wilco_ec_message* %1, %struct.wilco_ec_message** %4, align 8
  %7 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %3, align 8
  %8 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %4, align 8
  %11 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %4, align 8
  %14 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %4, align 8
  %17 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %4, align 8
  %20 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %3, align 8
  %24 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %3, align 8
  %27 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %26, i32 0, i32 1
  %28 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %27, align 8
  store %struct.wilco_ec_request* %28, %struct.wilco_ec_request** %5, align 8
  %29 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %4, align 8
  %30 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %5, align 8
  %31 = call i32 @wilco_ec_prepare(%struct.wilco_ec_message* %29, %struct.wilco_ec_request* %30)
  %32 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %3, align 8
  %33 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %4, align 8
  %34 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %5, align 8
  %35 = call i32 @wilco_ec_transfer(%struct.wilco_ec_device* %32, %struct.wilco_ec_message* %33, %struct.wilco_ec_request* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %3, align 8
  %37 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wilco_ec_prepare(%struct.wilco_ec_message*, %struct.wilco_ec_request*) #1

declare dso_local i32 @wilco_ec_transfer(%struct.wilco_ec_device*, %struct.wilco_ec_message*, %struct.wilco_ec_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
