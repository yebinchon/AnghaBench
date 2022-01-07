; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_of_net.c_of_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_of_net.c_of_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i64, i8* }

@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_node*, i8*)* @of_get_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @of_get_mac_addr(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.property* @of_find_property(%struct.device_node* %7, i8* %8, i32* null)
  store %struct.property* %9, %struct.property** %6, align 8
  %10 = load %struct.property*, %struct.property** %6, align 8
  %11 = icmp ne %struct.property* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.property*, %struct.property** %6, align 8
  %14 = getelementptr inbounds %struct.property, %struct.property* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ETH_ALEN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.property*, %struct.property** %6, align 8
  %20 = getelementptr inbounds %struct.property, %struct.property* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @is_valid_ether_addr(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.property*, %struct.property** %6, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  br label %29

28:                                               ; preds = %18, %12, %2
  store i8* null, i8** %3, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @is_valid_ether_addr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
