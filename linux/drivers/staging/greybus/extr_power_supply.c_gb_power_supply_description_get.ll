; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_description_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_description_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32, i32, i8*, i8*, i8*, i32 }
%struct.gb_connection = type { i32 }
%struct.gb_power_supply_get_description_request = type { i32 }
%struct.gb_power_supply_get_description_response = type { i32, i32, i32, i32, i32 }

@GB_POWER_SUPPLY_TYPE_GET_DESCRIPTION = common dso_local global i32 0, align 4
@PROP_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*)* @gb_power_supply_description_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_power_supply_description_get(%struct.gb_power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_power_supply*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_power_supply_get_description_request, align 4
  %6 = alloca %struct.gb_power_supply_get_description_response, align 4
  %7 = alloca i32, align 4
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %3, align 8
  %8 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %9 = call %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply* %8)
  store %struct.gb_connection* %9, %struct.gb_connection** %4, align 8
  %10 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %11 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.gb_power_supply_get_description_request, %struct.gb_power_supply_get_description_request* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %15 = load i32, i32* @GB_POWER_SUPPLY_TYPE_GET_DESCRIPTION, align 4
  %16 = call i32 @gb_operation_sync(%struct.gb_connection* %14, i32 %15, %struct.gb_power_supply_get_description_request* %5, i32 4, %struct.gb_power_supply_get_description_response* %6, i32 20)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.gb_power_supply_get_description_response, %struct.gb_power_supply_get_description_response* %6, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PROP_MAX, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kstrndup(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %28 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %30 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %76

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.gb_power_supply_get_description_response, %struct.gb_power_supply_get_description_response* %6, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PROP_MAX, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kstrndup(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %43 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %45 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %76

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.gb_power_supply_get_description_response, %struct.gb_power_supply_get_description_response* %6, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PROP_MAX, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kstrndup(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %58 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %60 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %76

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.gb_power_supply_get_description_response, %struct.gb_power_supply_get_description_response* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %71 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.gb_power_supply_get_description_response, %struct.gb_power_supply_get_description_response* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %75 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %66, %63, %48, %33, %19
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply*) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_power_supply_get_description_request*, i32, %struct.gb_power_supply_get_description_response*, i32) #1

declare dso_local i8* @kstrndup(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
