; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_serialnr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_serialnr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cca_info = type { i8* }
%struct.ap_card = type { i32, %struct.zcrypt_card* }
%struct.zcrypt_card = type { i32 }

@ap_domain_index = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @serialnr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serialnr_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cca_info, align 8
  %8 = alloca %struct.ap_card*, align 8
  %9 = alloca %struct.zcrypt_card*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ap_card* @to_ap_card(%struct.device* %10)
  store %struct.ap_card* %11, %struct.ap_card** %8, align 8
  %12 = load %struct.ap_card*, %struct.ap_card** %8, align 8
  %13 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %12, i32 0, i32 1
  %14 = load %struct.zcrypt_card*, %struct.zcrypt_card** %13, align 8
  store %struct.zcrypt_card* %14, %struct.zcrypt_card** %9, align 8
  %15 = call i32 @memset(%struct.cca_info* %7, i32 0, i32 8)
  %16 = load i64, i64* @ap_domain_index, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.ap_card*, %struct.ap_card** %8, align 8
  %20 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* @ap_domain_index, align 8
  %23 = load %struct.zcrypt_card*, %struct.zcrypt_card** %9, align 8
  %24 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cca_get_info(i32 %21, i64 %22, %struct.cca_info* %7, i32 %25)
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %7, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %31)
  ret i32 %32
}

declare dso_local %struct.ap_card* @to_ap_card(%struct.device*) #1

declare dso_local i32 @memset(%struct.cca_info*, i32, i32) #1

declare dso_local i32 @cca_get_info(i32, i64, %struct.cca_info*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
