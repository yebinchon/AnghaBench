; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_data_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_data_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.qed_dev*, %struct.sk_buff*, i32)* }
%struct.qed_dev = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.qedi_ctx = type { i32, %struct.qedi_uio_dev*, %struct.qed_dev* }
%struct.qedi_uio_dev = type { i32, i64 }
%struct.qedi_uio_ctrl = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"udev is NULL.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"uctlr is NULL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid len %u\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"alloc_skb failed\0A\00", align 1
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@qedi_ops = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"ll2 start_xmit returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, i64)* @qedi_data_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_data_avail(%struct.qedi_ctx* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca %struct.qedi_uio_dev*, align 8
  %8 = alloca %struct.qedi_uio_ctrl*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %12, i32 0, i32 2
  %14 = load %struct.qed_dev*, %struct.qed_dev** %13, align 8
  store %struct.qed_dev* %14, %struct.qed_dev** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %15, i32 0, i32 1
  %17 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %16, align 8
  store %struct.qedi_uio_dev* %17, %struct.qedi_uio_dev** %7, align 8
  %18 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %7, align 8
  %19 = icmp ne %struct.qedi_uio_dev* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %113

26:                                               ; preds = %2
  %27 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %7, align 8
  %28 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.qedi_uio_ctrl*
  store %struct.qedi_uio_ctrl* %30, %struct.qedi_uio_ctrl** %8, align 8
  %31 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %8, align 8
  %32 = icmp ne %struct.qedi_uio_ctrl* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %113

39:                                               ; preds = %26
  %40 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %8, align 8
  %41 = getelementptr inbounds %struct.qedi_uio_ctrl, %struct.qedi_uio_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %113

52:                                               ; preds = %39
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.sk_buff* @alloc_skb(i32 %53, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %9, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %59, i32 0, i32 0
  %61 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %113

64:                                               ; preds = %52
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @skb_put(%struct.sk_buff* %65, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %7, align 8
  %72 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @memcpy(i32 %70, i32 %73, i32 %74)
  %76 = load i32, i32* @CHECKSUM_NONE, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i64, i64* %5, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %64
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = load i32, i32* @ETH_P_8021Q, align 4
  %84 = call i32 @htons(i32 %83)
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %82, i32 %84, i64 %85)
  br label %87

87:                                               ; preds = %81, %64
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedi_ops, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32 (%struct.qed_dev*, %struct.sk_buff*, i32)*, i32 (%struct.qed_dev*, %struct.sk_buff*, i32)** %91, align 8
  %93 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = call i32 %92(%struct.qed_dev* %93, %struct.sk_buff* %94, i32 0)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %87
  %99 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %100 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %99, i32 0, i32 0
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  br label %105

105:                                              ; preds = %98, %87
  %106 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %8, align 8
  %107 = getelementptr inbounds %struct.qedi_uio_ctrl, %struct.qedi_uio_ctrl* %106, i32 0, i32 0
  store i32 0, i32* %107, align 4
  %108 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %8, align 8
  %109 = getelementptr inbounds %struct.qedi_uio_ctrl, %struct.qedi_uio_ctrl* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %105, %58, %45, %33, %20
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @QEDI_ERR(i32*, i8*, ...) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
