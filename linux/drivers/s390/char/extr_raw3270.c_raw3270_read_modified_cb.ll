; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_read_modified_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_read_modified_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.raw3270* }
%struct.raw3270 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270_request*, i8*)* @raw3270_read_modified_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3270_read_modified_cb(%struct.raw3270_request* %0, i8* %1) #0 {
  %3 = alloca %struct.raw3270_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.raw3270*, align 8
  store %struct.raw3270_request* %0, %struct.raw3270_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %7 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.raw3270*, %struct.raw3270** %9, align 8
  store %struct.raw3270* %10, %struct.raw3270** %5, align 8
  %11 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %12 = call i32 @raw3270_size_device(%struct.raw3270* %11)
  %13 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %14 = call i32 @raw3270_size_device_done(%struct.raw3270* %13)
  ret void
}

declare dso_local i32 @raw3270_size_device(%struct.raw3270*) #1

declare dso_local i32 @raw3270_size_device_done(%struct.raw3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
