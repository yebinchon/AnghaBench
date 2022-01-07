; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_write_cmd_bd_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_setup_write_cmd_bd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i64, %struct.TYPE_12__*, %struct.TYPE_7__, %struct.bnx2i_cmd* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.bnx2i_cmd = type { %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@KERN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"bnx2i- error, buf offset 0x%x bd_valid %d use_sg %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bnx2i err, bd[%d]: len %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*)* @bnx2i_setup_write_cmd_bd_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_setup_write_cmd_bd_info(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.bnx2i_cmd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %9 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %10 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %9, i32 0, i32 3
  %11 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %10, align 8
  store %struct.bnx2i_cmd* %11, %struct.bnx2i_cmd** %3, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %17 = call i64 @iscsi_task_has_unsol_data(%struct.iscsi_task* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %135

25:                                               ; preds = %19, %1
  %26 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %27 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %32 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %135

37:                                               ; preds = %25
  %38 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %39 = call i64 @iscsi_task_has_unsol_data(%struct.iscsi_task* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @bnx2i_get_write_cmd_bd_idx(%struct.bnx2i_cmd* %42, i64 %43, i64* %4, i64* %5)
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  store i64 %49, i64* %52, align 8
  %53 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %54 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %41, %37
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %135

63:                                               ; preds = %59
  %64 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @bnx2i_get_write_cmd_bd_idx(%struct.bnx2i_cmd* %64, i64 %65, i64* %4, i64* %5)
  %67 = load i64, i64* %4, align 8
  %68 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %69 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %67, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %63
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %79 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @scsi_sg_count(i32 %80)
  %82 = icmp sgt i64 %77, %81
  br i1 %82, label %83, label %126

83:                                               ; preds = %76, %63
  store i32 0, i32* %8, align 4
  %84 = load i32, i32* @KERN_ALERT, align 4
  %85 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %86 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %91 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %95 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @scsi_sg_count(i32 %96)
  %98 = call i32 (i32, %struct.TYPE_12__*, i8*, i32, i32, ...) @iscsi_conn_printk(i32 %84, %struct.TYPE_12__* %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %93, i64 %97)
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %122, %83
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %102 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %99
  %107 = load i32, i32* @KERN_ALERT, align 4
  %108 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %109 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %113 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, %struct.TYPE_12__*, i8*, i32, i32, ...) @iscsi_conn_printk(i32 %107, %struct.TYPE_12__* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %120)
  br label %122

122:                                              ; preds = %106
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %99

125:                                              ; preds = %99
  br label %126

126:                                              ; preds = %125, %76
  %127 = load i64, i64* %4, align 8
  %128 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %129 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  store i64 %127, i64* %130, align 8
  %131 = load i64, i64* %5, align 8
  %132 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %133 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i64 %131, i64* %134, align 8
  br label %135

135:                                              ; preds = %24, %36, %126, %59
  ret void
}

declare dso_local i64 @iscsi_task_has_unsol_data(%struct.iscsi_task*) #1

declare dso_local i32 @bnx2i_get_write_cmd_bd_idx(%struct.bnx2i_cmd*, i64, i64*, i64*) #1

declare dso_local i64 @scsi_sg_count(i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.TYPE_12__*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
