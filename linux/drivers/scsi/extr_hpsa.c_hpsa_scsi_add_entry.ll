; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.hpsa_scsi_dev_t**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32*, i64, i32, i32 }

@HPSA_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"too many devices, some will be inaccessible.\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"physical device with no LUN=0, suspect firmware bug or unsupported hardware configuration.\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"masked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t**, i32*)* @hpsa_scsi_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_add_entry(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %8 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i8], align 1
  %13 = alloca [8 x i8], align 1
  %14 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %7, align 8
  store %struct.hpsa_scsi_dev_t** %2, %struct.hpsa_scsi_dev_t*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %16 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %23 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %152

27:                                               ; preds = %4
  %28 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %29 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %121

33:                                               ; preds = %27
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %35 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %42 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %43 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %46 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %49 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %48, i32 0, i32 3
  %50 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %51 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %50, i32 0, i32 0
  %52 = call i64 @hpsa_find_target_lun(%struct.ctlr_info* %41, i32* %44, i32 %47, i32* %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %152

55:                                               ; preds = %40
  br label %121

56:                                               ; preds = %33
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %58 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %59 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @memcpy(i8* %57, i32* %60, i32 8)
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 4
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 5
  store i8 0, i8* %63, align 1
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %106, %56
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %109

68:                                               ; preds = %64
  %69 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %70 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %69, i32 0, i32 1
  %71 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %71, i64 %73
  %75 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %74, align 8
  store %struct.hpsa_scsi_dev_t* %75, %struct.hpsa_scsi_dev_t** %14, align 8
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %77 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %14, align 8
  %78 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @memcpy(i8* %76, i32* %79, i32 8)
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 4
  store i8 0, i8* %81, align 1
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 5
  store i8 0, i8* %82, align 1
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %85 = call i64 @memcmp(i8* %83, i8* %84, i32 8)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %68
  %88 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %14, align 8
  %89 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %92 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %14, align 8
  %94 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %97 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %99 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %104 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %109

105:                                              ; preds = %68
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %64

109:                                              ; preds = %87, %64
  %110 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %111 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %116 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = call i32 @dev_warn(i32* %118, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %152

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %55, %32
  %122 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %123 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %124 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %123, i32 0, i32 1
  %125 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %125, i64 %127
  store %struct.hpsa_scsi_dev_t* %122, %struct.hpsa_scsi_dev_t** %128, align 8
  %129 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %130 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %134 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %8, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %134, i64 %137
  store %struct.hpsa_scsi_dev_t* %133, %struct.hpsa_scsi_dev_t** %138, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* @KERN_INFO, align 4
  %143 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %144 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %145 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %146 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %151 = call i32 @hpsa_show_dev_msg(i32 %142, %struct.ctlr_info* %143, %struct.hpsa_scsi_dev_t* %144, i8* %150)
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %121, %114, %54, %21
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @hpsa_find_target_lun(%struct.ctlr_info*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hpsa_show_dev_msg(i32, %struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
