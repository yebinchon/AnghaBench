; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_add_immediate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_add_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_property_dir = type { i32 }
%struct.tb_property = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TB_PROPERTY_TYPE_VALUE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_property_add_immediate(%struct.tb_property_dir* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb_property_dir*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_property*, align 8
  store %struct.tb_property_dir* %0, %struct.tb_property_dir** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @tb_property_key_valid(i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @TB_PROPERTY_TYPE_VALUE, align 4
  %18 = call %struct.tb_property* @tb_property_alloc(i8* %16, i32 %17)
  store %struct.tb_property* %18, %struct.tb_property** %8, align 8
  %19 = load %struct.tb_property*, %struct.tb_property** %8, align 8
  %20 = icmp ne %struct.tb_property* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %15
  %25 = load %struct.tb_property*, %struct.tb_property** %8, align 8
  %26 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.tb_property*, %struct.tb_property** %8, align 8
  %29 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.tb_property*, %struct.tb_property** %8, align 8
  %32 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %31, i32 0, i32 1
  %33 = load %struct.tb_property_dir*, %struct.tb_property_dir** %5, align 8
  %34 = getelementptr inbounds %struct.tb_property_dir, %struct.tb_property_dir* %33, i32 0, i32 0
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %21, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @tb_property_key_valid(i8*) #1

declare dso_local %struct.tb_property* @tb_property_alloc(i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
