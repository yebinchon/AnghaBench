; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_remove_directory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_remove_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_property_dir = type { i32 }
%struct.tb_property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tb_property_dir* }

@xdomain_property_dir = common dso_local global i32 0, align 4
@TB_PROPERTY_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tb_property_dir*)* @remove_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_directory(i8* %0, %struct.tb_property_dir* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tb_property_dir*, align 8
  %6 = alloca %struct.tb_property*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tb_property_dir* %1, %struct.tb_property_dir** %5, align 8
  %7 = load i32, i32* @xdomain_property_dir, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @TB_PROPERTY_TYPE_DIRECTORY, align 4
  %10 = call %struct.tb_property* @tb_property_find(i32 %7, i8* %8, i32 %9)
  store %struct.tb_property* %10, %struct.tb_property** %6, align 8
  %11 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %12 = icmp ne %struct.tb_property* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %15 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.tb_property_dir*, %struct.tb_property_dir** %16, align 8
  %18 = load %struct.tb_property_dir*, %struct.tb_property_dir** %5, align 8
  %19 = icmp eq %struct.tb_property_dir* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.tb_property*, %struct.tb_property** %6, align 8
  %22 = call i32 @tb_property_remove(%struct.tb_property* %21)
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.tb_property* @tb_property_find(i32, i8*, i32) #1

declare dso_local i32 @tb_property_remove(%struct.tb_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
