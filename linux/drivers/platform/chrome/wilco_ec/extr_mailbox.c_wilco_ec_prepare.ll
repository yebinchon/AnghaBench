; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_mailbox.c_wilco_ec_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_mailbox.c_wilco_ec_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilco_ec_message = type { i32, %struct.wilco_ec_request*, i32 }
%struct.wilco_ec_request = type { i32, i64, i32, i32, i32 }

@EC_MAILBOX_PROTO_VERSION = common dso_local global i32 0, align 4
@EC_MAILBOX_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wilco_ec_message*, %struct.wilco_ec_request*)* @wilco_ec_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilco_ec_prepare(%struct.wilco_ec_message* %0, %struct.wilco_ec_request* %1) #0 {
  %3 = alloca %struct.wilco_ec_message*, align 8
  %4 = alloca %struct.wilco_ec_request*, align 8
  store %struct.wilco_ec_message* %0, %struct.wilco_ec_message** %3, align 8
  store %struct.wilco_ec_request* %1, %struct.wilco_ec_request** %4, align 8
  %5 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %6 = call i32 @memset(%struct.wilco_ec_request* %5, i32 0, i32 32)
  %7 = load i32, i32* @EC_MAILBOX_PROTO_VERSION, align 4
  %8 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %9 = getelementptr inbounds %struct.wilco_ec_request, %struct.wilco_ec_request* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %3, align 8
  %11 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %14 = getelementptr inbounds %struct.wilco_ec_request, %struct.wilco_ec_request* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @EC_MAILBOX_VERSION, align 4
  %16 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %17 = getelementptr inbounds %struct.wilco_ec_request, %struct.wilco_ec_request* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %3, align 8
  %19 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %22 = getelementptr inbounds %struct.wilco_ec_request, %struct.wilco_ec_request* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %24 = call i64 @wilco_ec_checksum(%struct.wilco_ec_request* %23, i32 32)
  %25 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %26 = getelementptr inbounds %struct.wilco_ec_request, %struct.wilco_ec_request* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %3, align 8
  %28 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %27, i32 0, i32 1
  %29 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %28, align 8
  %30 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %3, align 8
  %31 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @wilco_ec_checksum(%struct.wilco_ec_request* %29, i32 %32)
  %34 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %35 = getelementptr inbounds %struct.wilco_ec_request, %struct.wilco_ec_request* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %39 = getelementptr inbounds %struct.wilco_ec_request, %struct.wilco_ec_request* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 0, %40
  %42 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %4, align 8
  %43 = getelementptr inbounds %struct.wilco_ec_request, %struct.wilco_ec_request* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  ret void
}

declare dso_local i32 @memset(%struct.wilco_ec_request*, i32, i32) #1

declare dso_local i64 @wilco_ec_checksum(%struct.wilco_ec_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
