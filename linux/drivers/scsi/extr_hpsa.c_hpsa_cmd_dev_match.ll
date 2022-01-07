; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_cmd_dev_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_cmd_dev_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_6__*, %struct.io_accel2_cmd* }
%struct.TYPE_6__ = type { i32 }
%struct.io_accel2_cmd = type { i32 }
%struct.CommandList = type { i64, i32, %struct.hpsa_scsi_dev_t*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32, %struct.hpsa_scsi_dev_t** }
%struct.hpsa_tmf_struct = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unexpected cmd_type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*, %struct.hpsa_scsi_dev_t*, i8*)* @hpsa_cmd_dev_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_cmd_dev_match(%struct.ctlr_info* %0, %struct.CommandList* %1, %struct.hpsa_scsi_dev_t* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.CommandList*, align 8
  %8 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.io_accel2_cmd*, align 8
  %13 = alloca %struct.hpsa_tmf_struct*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store %struct.CommandList* %1, %struct.CommandList** %7, align 8
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %15 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %14, i32 0, i32 1
  %16 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %15, align 8
  %17 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %18 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.io_accel2_cmd, %struct.io_accel2_cmd* %16, i64 %19
  store %struct.io_accel2_cmd* %20, %struct.io_accel2_cmd** %12, align 8
  %21 = load %struct.io_accel2_cmd*, %struct.io_accel2_cmd** %12, align 8
  %22 = bitcast %struct.io_accel2_cmd* %21 to %struct.hpsa_tmf_struct*
  store %struct.hpsa_tmf_struct* %22, %struct.hpsa_tmf_struct** %13, align 8
  %23 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %24 = call i64 @hpsa_is_cmd_idle(%struct.CommandList* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %125

27:                                               ; preds = %4
  %28 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %29 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %113 [
    i32 129, label %31
    i32 130, label %31
    i32 132, label %41
    i32 131, label %41
    i32 128, label %79
    i32 0, label %112
  ]

31:                                               ; preds = %27, %27
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %34 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @memcmp(i8* %32, i32* %36, i32 4)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  br label %123

41:                                               ; preds = %27, %27
  %42 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %43 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %42, i32 0, i32 2
  %44 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %43, align 8
  %45 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %46 = icmp eq %struct.hpsa_scsi_dev_t* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  br label %78

48:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %74, %48
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %52 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ false, %49 ], [ %58, %55 ]
  br i1 %60, label %61, label %77

61:                                               ; preds = %59
  %62 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %63 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %62, i32 0, i32 2
  %64 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %64, i64 %66
  %68 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %67, align 8
  %69 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %70 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %69, i32 0, i32 2
  %71 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %70, align 8
  %72 = icmp eq %struct.hpsa_scsi_dev_t* %68, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %49

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77, %47
  br label %123

79:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %108, %79
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %83 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %86, %80
  %91 = phi i1 [ false, %80 ], [ %89, %86 ]
  br i1 %91, label %92, label %111

92:                                               ; preds = %90
  %93 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %94 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %93, i32 0, i32 2
  %95 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %95, i64 %97
  %99 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %98, align 8
  %100 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.hpsa_tmf_struct*, %struct.hpsa_tmf_struct** %13, align 8
  %103 = getelementptr inbounds %struct.hpsa_tmf_struct, %struct.hpsa_tmf_struct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = icmp eq i32 %101, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %92
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %80

111:                                              ; preds = %90
  br label %123

112:                                              ; preds = %27
  store i32 0, i32* %11, align 4
  br label %123

113:                                              ; preds = %27
  %114 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %115 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %119 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = call i32 (...) @BUG()
  br label %123

123:                                              ; preds = %113, %112, %111, %78, %31
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %26
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i64 @hpsa_is_cmd_idle(%struct.CommandList*) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
