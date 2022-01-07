; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_show_dev_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_show_dev_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"enclosure\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@raid_label = common dso_local global i8** null, align 8
@PHYSICAL_DRIVE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"RAID-%s\00", align 1
@RAID_UNKNOWN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rom\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"tape\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"changer\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"scsi %d:%d:%d:%d: %s %s %.8s %.16s %s SSDSmartPathCap%c En%c Exp=%d\0A\00", align 1
@LABEL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, i8*)* @hpsa_show_dev_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_show_dev_msg(i8* %0, %struct.ctlr_info* %1, %struct.hpsa_scsi_dev_t* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [25 x i8], align 16
  store i8* %0, i8** %5, align 8
  store %struct.ctlr_info* %1, %struct.ctlr_info** %6, align 8
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %11 = icmp eq %struct.ctlr_info* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %4
  %13 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %14 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12, %4
  br label %136

23:                                               ; preds = %17
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %25 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %83 [
    i32 131, label %27
    i32 133, label %30
    i32 134, label %33
    i32 128, label %33
    i32 130, label %74
    i32 129, label %77
    i32 132, label %80
  ]

27:                                               ; preds = %23
  %28 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %29 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %86

30:                                               ; preds = %23
  %31 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %86

33:                                               ; preds = %23, %23
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %35 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %73

41:                                               ; preds = %33
  %42 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %43 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @is_logical_dev_addr_mode(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %49 = load i8**, i8*** @raid_label, align 8
  %50 = load i64, i64* @PHYSICAL_DRIVE, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %72

54:                                               ; preds = %41
  %55 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %56 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %57 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RAID_UNKNOWN, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %69

62:                                               ; preds = %54
  %63 = load i8**, i8*** @raid_label, align 8
  %64 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %65 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  br label %69

69:                                               ; preds = %62, %61
  %70 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %61 ], [ %68, %62 ]
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %47
  br label %73

73:                                               ; preds = %72, %38
  br label %86

74:                                               ; preds = %23
  %75 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %76 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %75, i32 25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %86

77:                                               ; preds = %23
  %78 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %79 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %86

80:                                               ; preds = %23
  %81 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %82 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %86

83:                                               ; preds = %23
  %84 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %85 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %84, i32 25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80, %77, %74, %73, %30, %27
  %87 = load i8*, i8** %5, align 8
  %88 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %89 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %93 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %98 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %101 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %104 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %108 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @scsi_device_type(i32 %109)
  %111 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %112 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %115 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %118 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %119 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 43, i32 45
  %124 = trunc i32 %123 to i8
  %125 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %126 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 43, i32 45
  %131 = trunc i32 %130 to i8
  %132 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %133 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dev_printk(i8* %87, i32* %91, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0), i32 %96, i32 %99, i32 %102, i32 %105, i8* %106, i32 %110, i32 %113, i32 %116, i8* %117, i8 signext %124, i8 signext %131, i32 %134)
  br label %136

136:                                              ; preds = %86, %22
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @is_logical_dev_addr_mode(i32) #1

declare dso_local i32 @dev_printk(i8*, i32*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @scsi_device_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
