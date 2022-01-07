; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_controlvm_init_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_controlvm_init_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controlvm_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.controlvm_message_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controlvm_message*, %struct.controlvm_message_header*, i32)* @controlvm_init_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @controlvm_init_response(%struct.controlvm_message* %0, %struct.controlvm_message_header* %1, i32 %2) #0 {
  %4 = alloca %struct.controlvm_message*, align 8
  %5 = alloca %struct.controlvm_message_header*, align 8
  %6 = alloca i32, align 4
  store %struct.controlvm_message* %0, %struct.controlvm_message** %4, align 8
  store %struct.controlvm_message_header* %1, %struct.controlvm_message_header** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.controlvm_message*, %struct.controlvm_message** %4, align 8
  %8 = call i32 @memset(%struct.controlvm_message* %7, i32 0, i32 40)
  %9 = load %struct.controlvm_message*, %struct.controlvm_message** %4, align 8
  %10 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %9, i32 0, i32 0
  %11 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %12 = call i32 @memcpy(%struct.TYPE_4__* %10, %struct.controlvm_message_header* %11, i32 4)
  %13 = load %struct.controlvm_message*, %struct.controlvm_message** %4, align 8
  %14 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.controlvm_message*, %struct.controlvm_message** %4, align 8
  %17 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.controlvm_message*, %struct.controlvm_message** %4, align 8
  %20 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.controlvm_message*, %struct.controlvm_message** %4, align 8
  %26 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 0, %29
  %31 = sext i32 %30 to i64
  %32 = load %struct.controlvm_message*, %struct.controlvm_message** %4, align 8
  %33 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @memset(%struct.controlvm_message*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.controlvm_message_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
