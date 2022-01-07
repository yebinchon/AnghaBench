; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_cap_get_endpoint_uid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_cap_get_endpoint_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_cap = type { i32, %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.gb_cap_get_endpoint_uid_response = type { i32 }

@GB_CAP_TYPE_GET_ENDPOINT_UID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to get endpoint uid (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_cap*, i32*)* @cap_get_endpoint_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_get_endpoint_uid(%struct.gb_cap* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_cap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.gb_cap_get_endpoint_uid_response, align 4
  %8 = alloca i32, align 4
  store %struct.gb_cap* %0, %struct.gb_cap** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %10 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %9, i32 0, i32 1
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  store %struct.gb_connection* %11, %struct.gb_connection** %6, align 8
  %12 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %13 = load i32, i32* @GB_CAP_TYPE_GET_ENDPOINT_UID, align 4
  %14 = call i32 @gb_operation_sync(%struct.gb_connection* %12, i32 %13, i32* null, i32 0, %struct.gb_cap_get_endpoint_uid_response* %7, i32 4)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %19 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds %struct.gb_cap_get_endpoint_uid_response, %struct.gb_cap_get_endpoint_uid_response* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32* %25, i32 %27, i32 4)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, i32*, i32, %struct.gb_cap_get_endpoint_uid_response*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
