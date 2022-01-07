; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_get_defined_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_get_defined_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pin_desc = type { %struct.aspeed_sig_expr*** }
%struct.aspeed_sig_expr = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.aspeed_pin_desc*, i8* (%struct.aspeed_sig_expr*)*)* @get_defined_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_defined_attribute(%struct.aspeed_pin_desc* %0, i8* (%struct.aspeed_sig_expr*)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.aspeed_pin_desc*, align 8
  %5 = alloca i8* (%struct.aspeed_sig_expr*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.aspeed_sig_expr***, align 8
  %9 = alloca %struct.aspeed_sig_expr**, align 8
  %10 = alloca %struct.aspeed_sig_expr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.aspeed_pin_desc* %0, %struct.aspeed_pin_desc** %4, align 8
  store i8* (%struct.aspeed_sig_expr*)* %1, i8* (%struct.aspeed_sig_expr*)** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %4, align 8
  %15 = getelementptr inbounds %struct.aspeed_pin_desc, %struct.aspeed_pin_desc* %14, i32 0, i32 0
  %16 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %15, align 8
  store %struct.aspeed_sig_expr*** %16, %struct.aspeed_sig_expr**** %8, align 8
  br label %17

17:                                               ; preds = %62, %2
  %18 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %8, align 8
  %19 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %18, align 8
  store %struct.aspeed_sig_expr** %19, %struct.aspeed_sig_expr*** %9, align 8
  %20 = icmp ne %struct.aspeed_sig_expr** %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %47, %21
  %23 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %9, align 8
  %24 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %23, align 8
  store %struct.aspeed_sig_expr* %24, %struct.aspeed_sig_expr** %10, align 8
  %25 = icmp ne %struct.aspeed_sig_expr* %24, null
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i8* (%struct.aspeed_sig_expr*)*, i8* (%struct.aspeed_sig_expr*)** %5, align 8
  %28 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %10, align 8
  %29 = call i8* %27(%struct.aspeed_sig_expr* %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %12, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %35, %36
  %38 = add i64 %37, 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @krealloc(i8* %34, i64 %38, i32 %39)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %26
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = load i8*, i8** %13, align 8
  store i8* %46, i8** %3, align 8
  br label %77

47:                                               ; preds = %26
  %48 = load i8*, i8** %13, align 8
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @strcat(i8* %55, i8* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %9, align 8
  %61 = getelementptr inbounds %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %60, i32 1
  store %struct.aspeed_sig_expr** %61, %struct.aspeed_sig_expr*** %9, align 8
  br label %22

62:                                               ; preds = %22
  %63 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %8, align 8
  %64 = getelementptr inbounds %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %63, i32 1
  store %struct.aspeed_sig_expr*** %64, %struct.aspeed_sig_expr**** %8, align 8
  br label %17

65:                                               ; preds = %17
  %66 = load i64, i64* %7, align 8
  %67 = icmp ult i64 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @kfree(i8* %69)
  store i8* null, i8** %3, align 8
  br label %77

71:                                               ; preds = %65
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 %73, 2
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %6, align 8
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %71, %68, %43
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @krealloc(i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
