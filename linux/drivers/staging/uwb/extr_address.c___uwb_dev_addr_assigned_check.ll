; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c___uwb_dev_addr_assigned_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_address.c___uwb_dev_addr_assigned_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.uwb_dev = type { i32 }
%struct.uwb_dev_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__uwb_dev_addr_assigned_check(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uwb_dev*, align 8
  %7 = alloca %struct.uwb_dev_addr*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.uwb_dev* @to_uwb_dev(%struct.device* %8)
  store %struct.uwb_dev* %9, %struct.uwb_dev** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.uwb_dev_addr*
  store %struct.uwb_dev_addr* %11, %struct.uwb_dev_addr** %7, align 8
  %12 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %7, align 8
  %13 = load %struct.uwb_dev*, %struct.uwb_dev** %6, align 8
  %14 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %13, i32 0, i32 0
  %15 = call i32 @uwb_dev_addr_cmp(%struct.uwb_dev_addr* %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.uwb_dev* @to_uwb_dev(%struct.device*) #1

declare dso_local i32 @uwb_dev_addr_cmp(%struct.uwb_dev_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
