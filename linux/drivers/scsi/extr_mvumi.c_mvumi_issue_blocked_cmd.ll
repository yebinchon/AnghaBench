; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_issue_blocked_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_issue_blocked_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32, i32**, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { {}* }
%struct.mvumi_cmd = type { i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }

@REQ_STATUS_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"last blocked cmd not finished, sync_cmd = %d\0A\00", align 1
@MVUMI_INTERNAL_CMD_WAIT_TIME = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"TIMEOUT:release tag [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"TIMEOUT:A internal command doesn't send!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*, %struct.mvumi_cmd*)* @mvumi_issue_blocked_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_issue_blocked_cmd(%struct.mvumi_hba* %0, %struct.mvumi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca %struct.mvumi_cmd*, align 8
  %6 = alloca i64, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %4, align 8
  store %struct.mvumi_cmd* %1, %struct.mvumi_cmd** %5, align 8
  %7 = load i64, i64* @REQ_STATUS_PENDING, align 8
  %8 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %9 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %10, i32 0, i32 3
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %16 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %19, i32 0, i32 3
  %21 = call i64 @atomic_read(i32* %20)
  %22 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = call i32 @BUG_ON(i32 1)
  store i32 -1, i32* %3, align 4
  br label %146

24:                                               ; preds = %2
  %25 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %25, i32 0, i32 3
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %29 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_lock_irqsave(i32 %32, i64 %33)
  %35 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %36 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %35, i32 0, i32 6
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.mvumi_hba*, %struct.mvumi_cmd*)**
  %40 = load i32 (%struct.mvumi_hba*, %struct.mvumi_cmd*)*, i32 (%struct.mvumi_hba*, %struct.mvumi_cmd*)** %39, align 8
  %41 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %42 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %43 = call i32 %40(%struct.mvumi_hba* %41, %struct.mvumi_cmd* %42)
  %44 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %45 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32 %48, i64 %49)
  %51 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %52 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @REQ_STATUS_PENDING, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @MVUMI_INTERNAL_CMD_WAIT_TIME, align 4
  %61 = load i32, i32* @HZ, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i32 @wait_event_timeout(i32 %53, i32 %59, i32 %62)
  %64 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %64, i32 0, i32 3
  %66 = call i64 @atomic_read(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %145

68:                                               ; preds = %24
  %69 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %70 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_lock_irqsave(i32 %73, i64 %74)
  %76 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %77 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %76, i32 0, i32 3
  %78 = call i32 @atomic_dec(i32* %77)
  %79 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %80 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %79, i32 0, i32 4
  %81 = load i32**, i32*** %80, align 8
  %82 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %83 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32*, i32** %81, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %119

90:                                               ; preds = %68
  %91 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %92 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %91, i32 0, i32 4
  %93 = load i32**, i32*** %92, align 8
  %94 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %95 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32*, i32** %93, i64 %98
  store i32* null, i32** %99, align 8
  %100 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %101 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %100, i32 0, i32 2
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %105 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %104, i32 0, i32 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i32*, i8*, ...) @dev_warn(i32* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %108)
  %110 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %111 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %112 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %111, i32 0, i32 3
  %113 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %114 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @tag_release_one(%struct.mvumi_hba* %110, i32* %112, i64 %117)
  br label %119

119:                                              ; preds = %90, %68
  %120 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %121 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %120, i32 0, i32 1
  %122 = call i32 @list_empty(i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  %125 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %126 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = call i32 (i32*, i8*, ...) @dev_warn(i32* %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %131 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %130, i32 0, i32 1
  %132 = call i32 @list_del_init(i32* %131)
  br label %137

133:                                              ; preds = %119
  %134 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %135 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %134, i32 0, i32 1
  %136 = call i32 @atomic_dec(i32* %135)
  br label %137

137:                                              ; preds = %133, %124
  %138 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %139 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32 %142, i64 %143)
  br label %145

145:                                              ; preds = %137, %24
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %14
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @tag_release_one(%struct.mvumi_hba*, i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
