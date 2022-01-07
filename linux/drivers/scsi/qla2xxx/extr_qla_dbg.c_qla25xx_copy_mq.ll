; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla25xx_copy_mq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla25xx_copy_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i64, i64, i32 }
%struct.qla2xxx_mq_chain = type { i32, i8**, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@DUMP_CHAIN_MQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qla_hw_data*, i8*, i32**)* @qla25xx_copy_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla25xx_copy_mq(%struct.qla_hw_data* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qla2xxx_mq_chain*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.qla2xxx_mq_chain*
  store %struct.qla2xxx_mq_chain* %14, %struct.qla2xxx_mq_chain** %11, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %21 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %29 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23, %19, %3
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %4, align 8
  br label %132

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.qla2xxx_mq_chain*
  store %struct.qla2xxx_mq_chain* %35, %struct.qla2xxx_mq_chain** %11, align 8
  %36 = load %struct.qla2xxx_mq_chain*, %struct.qla2xxx_mq_chain** %11, align 8
  %37 = getelementptr inbounds %struct.qla2xxx_mq_chain, %struct.qla2xxx_mq_chain* %36, i32 0, i32 0
  %38 = load i32**, i32*** %7, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32, i32* @DUMP_CHAIN_MQ, align 4
  %40 = call i8* @htonl(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.qla2xxx_mq_chain*, %struct.qla2xxx_mq_chain** %11, align 8
  %43 = getelementptr inbounds %struct.qla2xxx_mq_chain, %struct.qla2xxx_mq_chain* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = call i8* @htonl(i32 32)
  %45 = load %struct.qla2xxx_mq_chain*, %struct.qla2xxx_mq_chain** %11, align 8
  %46 = getelementptr inbounds %struct.qla2xxx_mq_chain, %struct.qla2xxx_mq_chain* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %33
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  br label %62

58:                                               ; preds = %33
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i64 [ %57, %54 ], [ %61, %58 ]
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i8* @htonl(i32 %65)
  %67 = load %struct.qla2xxx_mq_chain*, %struct.qla2xxx_mq_chain** %11, align 8
  %68 = getelementptr inbounds %struct.qla2xxx_mq_chain, %struct.qla2xxx_mq_chain* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %126, %62
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %129

73:                                               ; preds = %69
  %74 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call %struct.TYPE_5__* @ISP_QUE_REG(%struct.qla_hw_data* %74, i32 %75)
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %12, align 8
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %77, 4
  store i32 %78, i32* %9, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = call i32 @RD_REG_DWORD(i32* %81)
  %83 = call i8* @htonl(i32 %82)
  %84 = load %struct.qla2xxx_mq_chain*, %struct.qla2xxx_mq_chain** %11, align 8
  %85 = getelementptr inbounds %struct.qla2xxx_mq_chain, %struct.qla2xxx_mq_chain* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %83, i8** %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = call i32 @RD_REG_DWORD(i32* %92)
  %94 = call i8* @htonl(i32 %93)
  %95 = load %struct.qla2xxx_mq_chain*, %struct.qla2xxx_mq_chain** %11, align 8
  %96 = getelementptr inbounds %struct.qla2xxx_mq_chain, %struct.qla2xxx_mq_chain* %95, i32 0, i32 1
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  store i8* %94, i8** %101, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = call i32 @RD_REG_DWORD(i32* %104)
  %106 = call i8* @htonl(i32 %105)
  %107 = load %struct.qla2xxx_mq_chain*, %struct.qla2xxx_mq_chain** %11, align 8
  %108 = getelementptr inbounds %struct.qla2xxx_mq_chain, %struct.qla2xxx_mq_chain* %107, i32 0, i32 1
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  store i8* %106, i8** %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = call i32 @RD_REG_DWORD(i32* %116)
  %118 = call i8* @htonl(i32 %117)
  %119 = load %struct.qla2xxx_mq_chain*, %struct.qla2xxx_mq_chain** %11, align 8
  %120 = getelementptr inbounds %struct.qla2xxx_mq_chain, %struct.qla2xxx_mq_chain* %119, i32 0, i32 1
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 3
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  store i8* %118, i8** %125, align 8
  br label %126

126:                                              ; preds = %73
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %69

129:                                              ; preds = %69
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr i8, i8* %130, i64 32
  store i8* %131, i8** %4, align 8
  br label %132

132:                                              ; preds = %129, %31
  %133 = load i8*, i8** %4, align 8
  ret i8* %133
}

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local %struct.TYPE_5__* @ISP_QUE_REG(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @RD_REG_DWORD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
