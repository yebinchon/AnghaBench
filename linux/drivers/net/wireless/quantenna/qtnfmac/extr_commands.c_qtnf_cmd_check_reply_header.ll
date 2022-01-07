; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_check_reply_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_check_reply_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlink_resp = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"VIF%u.%u CMD%x: bad cmd_id in response: 0x%.4X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"VIF%u.%u CMD%x: bad MAC in response: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"VIF%u.%u CMD%x: bad VIF in response: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"VIF%u.%u CMD%x: bad response size %u < %zu\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlink_resp*, i64, i64, i64, i64)* @qtnf_cmd_check_reply_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_cmd_check_reply_header(%struct.qlink_resp* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlink_resp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qlink_resp* %0, %struct.qlink_resp** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.qlink_resp*, %struct.qlink_resp** %7, align 8
  %13 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le16_to_cpu(i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %5
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.qlink_resp*, %struct.qlink_resp** %7, align 8
  %26 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le16_to_cpu(i32 %27)
  %29 = call i32 (i8*, i64, i64, i64, i64, ...) @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23, i64 %24, i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %95

32:                                               ; preds = %5
  %33 = load %struct.qlink_resp*, %struct.qlink_resp** %7, align 8
  %34 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.qlink_resp*, %struct.qlink_resp** %7, align 8
  %46 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, i64, i64, i64, i64, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %43, i64 %44, i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %95

51:                                               ; preds = %32
  %52 = load %struct.qlink_resp*, %struct.qlink_resp** %7, align 8
  %53 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.qlink_resp*, %struct.qlink_resp** %7, align 8
  %65 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i64, i64, i64, i64, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %61, i64 %62, i64 %63, i64 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %95

70:                                               ; preds = %51
  %71 = load %struct.qlink_resp*, %struct.qlink_resp** %7, align 8
  %72 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @le16_to_cpu(i32 %74)
  %76 = load i64, i64* %11, align 8
  %77 = icmp ult i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %70
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.qlink_resp*, %struct.qlink_resp** %7, align 8
  %86 = getelementptr inbounds %struct.qlink_resp, %struct.qlink_resp* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @le16_to_cpu(i32 %88)
  %90 = load i64, i64* %11, align 8
  %91 = call i32 (i8*, i64, i64, i64, i64, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %82, i64 %83, i64 %84, i64 %89, i64 %90)
  %92 = load i32, i32* @ENOSPC, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %95

94:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %81, %60, %41, %21
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*, i64, i64, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
