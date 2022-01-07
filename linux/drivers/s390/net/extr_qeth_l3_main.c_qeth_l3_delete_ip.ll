; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_delete_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_delete_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { i64, i64, i64, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8 }
%struct.TYPE_4__ = type { i8 }

@QETH_IP_TYPE_RXIP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"delrxip\00", align 1
@QETH_IP_TYPE_VIPA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"delvipa\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"delip\00", align 1
@QETH_PROT_IPV4 = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@QETH_IP_TYPE_NORMAL = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_ipaddr*)* @qeth_l3_delete_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_delete_ip(%struct.qeth_card* %0, %struct.qeth_ipaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_ipaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_ipaddr*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_ipaddr* %1, %struct.qeth_ipaddr** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %9 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QETH_IP_TYPE_RXIP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %15 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %14, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %18 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QETH_IP_TYPE_VIPA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %23, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %27 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %26, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %13
  %30 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %31 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QETH_PROT_IPV4, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %37 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %38 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %36, i32 4, i8* %40, i32 4)
  br label %56

42:                                               ; preds = %29
  %43 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %44 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %45 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %43, i32 4, i8* %47, i32 8)
  %49 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %50 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %51 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %49, i32 4, i8* %54, i32 8)
  br label %56

56:                                               ; preds = %42, %35
  %57 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %58 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %59 = call %struct.qeth_ipaddr* @qeth_l3_find_addr_by_ip(%struct.qeth_card* %57, %struct.qeth_ipaddr* %58)
  store %struct.qeth_ipaddr* %59, %struct.qeth_ipaddr** %7, align 8
  %60 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %61 = icmp ne %struct.qeth_ipaddr* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %64 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %65 = call i32 @qeth_l3_addr_match_all(%struct.qeth_ipaddr* %63, %struct.qeth_ipaddr* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %110

70:                                               ; preds = %62
  %71 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %72 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %76 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @QETH_IP_TYPE_NORMAL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %82 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %110

87:                                               ; preds = %80, %70
  %88 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %89 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EINPROGRESS, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %110

95:                                               ; preds = %87
  %96 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %97 = call i64 @qeth_card_hw_is_reachable(%struct.qeth_card* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %101 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %102 = call i32 @qeth_l3_deregister_addr_entry(%struct.qeth_card* %100, %struct.qeth_ipaddr* %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %105 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %104, i32 0, i32 3
  %106 = call i32 @hash_del(i32* %105)
  %107 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %108 = call i32 @kfree(%struct.qeth_ipaddr* %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %103, %92, %85, %67
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_find_addr_by_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @qeth_l3_addr_match_all(%struct.qeth_ipaddr*, %struct.qeth_ipaddr*) #1

declare dso_local i64 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_deregister_addr_entry(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
