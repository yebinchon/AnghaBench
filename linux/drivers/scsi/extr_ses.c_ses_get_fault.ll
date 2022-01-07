; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_get_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_get_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { i32 }
%struct.enclosure_component = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enclosure_device*, %struct.enclosure_component*)* @ses_get_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_get_fault(%struct.enclosure_device* %0, %struct.enclosure_component* %1) #0 {
  %3 = alloca %struct.enclosure_device*, align 8
  %4 = alloca %struct.enclosure_component*, align 8
  %5 = alloca i8*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %3, align 8
  store %struct.enclosure_component* %1, %struct.enclosure_component** %4, align 8
  %6 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %7 = call i32 @ses_page2_supported(%struct.enclosure_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.enclosure_component*, %struct.enclosure_component** %4, align 8
  %11 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %10, i32 0, i32 0
  store i8 0, i8* %11, align 1
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %14 = load %struct.enclosure_component*, %struct.enclosure_component** %4, align 8
  %15 = call i8* @ses_get_page2_descriptor(%struct.enclosure_device* %13, %struct.enclosure_component* %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 96
  %24 = ashr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = load %struct.enclosure_component*, %struct.enclosure_component** %4, align 8
  %27 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %26, i32 0, i32 0
  store i8 %25, i8* %27, align 1
  br label %28

28:                                               ; preds = %9, %18, %12
  ret void
}

declare dso_local i32 @ses_page2_supported(%struct.enclosure_device*) #1

declare dso_local i8* @ses_get_page2_descriptor(%struct.enclosure_device*, %struct.enclosure_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
