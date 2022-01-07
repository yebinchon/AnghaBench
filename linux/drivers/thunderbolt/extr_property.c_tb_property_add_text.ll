; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_add_text.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_add_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_property_dir = type { i32 }
%struct.tb_property = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TB_PROPERTY_TYPE_TEXT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_property_add_text(%struct.tb_property_dir* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb_property_dir*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tb_property*, align 8
  store %struct.tb_property_dir* %0, %struct.tb_property_dir** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add nsw i64 %11, 1
  %13 = call i64 @round_up(i64 %12, i32 4)
  store i64 %13, i64* %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @tb_property_key_valid(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @TB_PROPERTY_TYPE_TEXT, align 4
  %23 = call %struct.tb_property* @tb_property_alloc(i8* %21, i32 %22)
  store %struct.tb_property* %23, %struct.tb_property** %9, align 8
  %24 = load %struct.tb_property*, %struct.tb_property** %9, align 8
  %25 = icmp ne %struct.tb_property* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %20
  %30 = load i64, i64* %8, align 8
  %31 = udiv i64 %30, 4
  %32 = load %struct.tb_property*, %struct.tb_property** %9, align 8
  %33 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @kzalloc(i64 %34, i32 %35)
  %37 = load %struct.tb_property*, %struct.tb_property** %9, align 8
  %38 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.tb_property*, %struct.tb_property** %9, align 8
  %41 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %29
  %46 = load %struct.tb_property*, %struct.tb_property** %9, align 8
  %47 = call i32 @kfree(%struct.tb_property* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %29
  %51 = load %struct.tb_property*, %struct.tb_property** %9, align 8
  %52 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @strcpy(i32 %54, i8* %55)
  %57 = load %struct.tb_property*, %struct.tb_property** %9, align 8
  %58 = getelementptr inbounds %struct.tb_property, %struct.tb_property* %57, i32 0, i32 1
  %59 = load %struct.tb_property_dir*, %struct.tb_property_dir** %5, align 8
  %60 = getelementptr inbounds %struct.tb_property_dir, %struct.tb_property_dir* %59, i32 0, i32 0
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %50, %45, %26, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tb_property_key_valid(i8*) #1

declare dso_local %struct.tb_property* @tb_property_alloc(i8*, i32) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.tb_property*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
