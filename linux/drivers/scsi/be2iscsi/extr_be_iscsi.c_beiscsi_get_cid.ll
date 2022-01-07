; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.ulp_cid_info**, %struct.TYPE_2__ }
%struct.ulp_cid_info = type { i16*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BEISCSI_ULP0 = common dso_local global i64 0, align 8
@BEISCSI_ULP1 = common dso_local global i64 0, align 8
@BE_INVALID_CID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"BS_%d : failed to get cid: available %u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_get_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_get_cid(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.ulp_cid_info*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 0
  %11 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %10, align 8
  %12 = load i64, i64* @BEISCSI_ULP0, align 8
  %13 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %11, i64 %12
  %14 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %13, align 8
  %15 = icmp ne %struct.ulp_cid_info* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %18 = call i32 @BEISCSI_ULP0_AVLBL_CID(%struct.beiscsi_hba* %17)
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %4, align 4
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 0
  %24 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %23, align 8
  %25 = load i64, i64* @BEISCSI_ULP1, align 8
  %26 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %24, i64 %25
  %27 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %26, align 8
  %28 = icmp ne %struct.ulp_cid_info* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = call i32 @BEISCSI_ULP1_AVLBL_CID(%struct.beiscsi_hba* %30)
  br label %33

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @BEISCSI_ULP0, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @BEISCSI_ULP1, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = trunc i64 %43 to i16
  store i16 %44, i16* %7, align 2
  %45 = load i16, i16* %7, align 2
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %47 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @test_bit(i16 zeroext %45, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @BE_INVALID_CID, align 4
  store i32 %53, i32* %2, align 4
  br label %118

54:                                               ; preds = %42
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %56 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %55, i32 0, i32 0
  %57 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %56, align 8
  %58 = load i16, i16* %7, align 2
  %59 = zext i16 %58 to i64
  %60 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %57, i64 %59
  %61 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %60, align 8
  store %struct.ulp_cid_info* %61, %struct.ulp_cid_info** %8, align 8
  %62 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %63 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %62, i32 0, i32 0
  %64 = load i16*, i16** %63, align 8
  %65 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %66 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i16, i16* %64, i64 %67
  %69 = load i16, i16* %68, align 2
  store i16 %69, i16* %6, align 2
  %70 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %71 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %54
  %75 = load i16, i16* %6, align 2
  %76 = zext i16 %75 to i32
  %77 = load i32, i32* @BE_INVALID_CID, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %74, %54
  %80 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %83 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %86 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %80, i32 %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load i32, i32* @BE_INVALID_CID, align 4
  store i32 %89, i32* %2, align 4
  br label %118

90:                                               ; preds = %74
  %91 = load i32, i32* @BE_INVALID_CID, align 4
  %92 = trunc i32 %91 to i16
  %93 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %94 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %93, i32 0, i32 0
  %95 = load i16*, i16** %94, align 8
  %96 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %97 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = getelementptr inbounds i16, i16* %95, i64 %98
  store i16 %92, i16* %100, align 2
  %101 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %102 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %105 = load i16, i16* %7, align 2
  %106 = call i64 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba* %104, i16 zeroext %105)
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %110 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %108, %90
  %112 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %113 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 8
  %116 = load i16, i16* %6, align 2
  %117 = zext i16 %116 to i32
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %111, %79, %52
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @BEISCSI_ULP0_AVLBL_CID(%struct.beiscsi_hba*) #1

declare dso_local i32 @BEISCSI_ULP1_AVLBL_CID(%struct.beiscsi_hba*) #1

declare dso_local i32 @test_bit(i16 zeroext, i8*) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*, i32, i32) #1

declare dso_local i64 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
