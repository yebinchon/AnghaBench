; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_get_arp_entry_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_get_arp_entry_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_arp_query_data = type { i32 }
%struct.qeth_arp_entrytype = type { i64 }

@QETHARP_IP_ADDR_V4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"arpev4\00", align 1
@QETHARP_IP_ADDR_V6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"arpev6\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"arpinv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_arp_query_data*, %struct.qeth_arp_entrytype*, i32)* @get_arp_entry_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_arp_entry_size(%struct.qeth_card* %0, %struct.qeth_arp_query_data* %1, %struct.qeth_arp_entrytype* %2, i32 %3) #0 {
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_arp_query_data*, align 8
  %7 = alloca %struct.qeth_arp_entrytype*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_arp_query_data* %1, %struct.qeth_arp_query_data** %6, align 8
  store %struct.qeth_arp_entrytype* %2, %struct.qeth_arp_entrytype** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %6, align 8
  %12 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 5
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load %struct.qeth_arp_entrytype*, %struct.qeth_arp_entrytype** %7, align 8
  %17 = getelementptr inbounds %struct.qeth_arp_entrytype, %struct.qeth_arp_entrytype* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QETHARP_IP_ADDR_V4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %23 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %22, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i64 4, i64 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  br label %38

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i64 4, i64 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %32, %26
  br label %67

39:                                               ; preds = %4
  %40 = load %struct.qeth_arp_entrytype*, %struct.qeth_arp_entrytype** %7, align 8
  %41 = getelementptr inbounds %struct.qeth_arp_entrytype, %struct.qeth_arp_entrytype* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @QETHARP_IP_ADDR_V6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %47 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %46, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i64 4, i64 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  br label %62

56:                                               ; preds = %45
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i64 4, i64 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56, %50
  br label %66

63:                                               ; preds = %39
  %64 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %65 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %64, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %62
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
