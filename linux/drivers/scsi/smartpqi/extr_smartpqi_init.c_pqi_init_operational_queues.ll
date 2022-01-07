; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_init_operational_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_init_operational_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i64, i64*, %struct.pqi_ctrl_info* }
%struct.TYPE_3__ = type { i64, i64 }

@PQI_MIN_OPERATIONAL_QUEUE_ID = common dso_local global i32 0, align 4
@RAID_PATH = common dso_local global i64 0, align 8
@AIO_PATH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_init_operational_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_init_operational_queues(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %6 = load i32, i32* @PQI_MIN_OPERATIONAL_QUEUE_ID, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @PQI_MIN_OPERATIONAL_QUEUE_ID, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %17 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  store %struct.pqi_ctrl_info* %15, %struct.pqi_ctrl_info** %22, align 8
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = sext i32 %27 to i64
  %30 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %31 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %76, %26
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %36 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = sext i32 %40 to i64
  %43 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %44 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @RAID_PATH, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %42, i64* %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  %55 = sext i32 %53 to i64
  %56 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %57 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @AIO_PATH, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %55, i64* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = sext i32 %66 to i64
  %69 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %70 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i64 %68, i64* %75, align 8
  br label %76

76:                                               ; preds = %39
  %77 = load i32, i32* %3, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %33

79:                                               ; preds = %33
  %80 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %81 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %98, %79
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %86 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %92 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 8
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %3, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %83

101:                                              ; preds = %83
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %149, %101
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %105 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %102
  %109 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %110 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = call i32 @spin_lock_init(i32* %117)
  %119 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %120 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = call i32 @spin_lock_init(i32* %127)
  %129 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %130 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = call i32 @INIT_LIST_HEAD(i32* %137)
  %139 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %140 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %3, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = call i32 @INIT_LIST_HEAD(i32* %147)
  br label %149

149:                                              ; preds = %108
  %150 = load i32, i32* %3, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %102

152:                                              ; preds = %102
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
