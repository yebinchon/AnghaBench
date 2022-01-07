; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.wsm_buf }
%struct.wsm_buf = type { i32 }
%struct.wsm_scan = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WSM_START_SCAN_REQ_ID = common dso_local global i32 0, align 4
@WSM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_scan(%struct.cw1200_common* %0, %struct.wsm_scan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_scan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wsm_buf*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_scan* %1, %struct.wsm_scan** %5, align 8
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 0
  store %struct.wsm_buf* %10, %struct.wsm_buf** %8, align 8
  %11 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %12 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 48
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %172

18:                                               ; preds = %2
  %19 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %20 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %172

26:                                               ; preds = %18
  %27 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %28 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %172

34:                                               ; preds = %26
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %36 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %35)
  %37 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %38 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %39 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @WSM_PUT8(%struct.wsm_buf* %37, i32 %40)
  %42 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %43 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %44 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @WSM_PUT8(%struct.wsm_buf* %42, i32 %45)
  %47 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %48 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %49 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @WSM_PUT8(%struct.wsm_buf* %47, i32 %50)
  %52 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %53 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %54 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @WSM_PUT8(%struct.wsm_buf* %52, i32 %55)
  %57 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %58 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %59 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @WSM_PUT32(%struct.wsm_buf* %57, i32 %60)
  %62 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %63 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %64 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @WSM_PUT8(%struct.wsm_buf* %62, i32 %65)
  %67 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %68 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %69 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @WSM_PUT8(%struct.wsm_buf* %67, i32 %70)
  %72 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %73 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %74 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @WSM_PUT8(%struct.wsm_buf* %72, i32 %75)
  %77 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %78 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %79 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @WSM_PUT8(%struct.wsm_buf* %77, i32 %80)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %123, %34
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %85 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %126

88:                                               ; preds = %82
  %89 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %90 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %91 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %90, i32 0, i32 9
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @WSM_PUT16(%struct.wsm_buf* %89, i32 %97)
  %99 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %100 = call i32 @WSM_PUT16(%struct.wsm_buf* %99, i32 0)
  %101 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %102 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %103 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %102, i32 0, i32 9
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @WSM_PUT32(%struct.wsm_buf* %101, i32 %109)
  %111 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %112 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %113 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %112, i32 0, i32 9
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @WSM_PUT32(%struct.wsm_buf* %111, i32 %119)
  %121 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %122 = call i32 @WSM_PUT32(%struct.wsm_buf* %121, i32 0)
  br label %123

123:                                              ; preds = %88
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %82

126:                                              ; preds = %82
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %155, %126
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %130 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %127
  %134 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %135 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %136 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %135, i32 0, i32 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @WSM_PUT32(%struct.wsm_buf* %134, i32 %142)
  %144 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %145 = load %struct.wsm_scan*, %struct.wsm_scan** %5, align 8
  %146 = getelementptr inbounds %struct.wsm_scan, %struct.wsm_scan* %145, i32 0, i32 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = call i32 @WSM_PUT(%struct.wsm_buf* %144, i32* %153, i32 8)
  br label %155

155:                                              ; preds = %133
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %127

158:                                              ; preds = %127
  %159 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %160 = load %struct.wsm_buf*, %struct.wsm_buf** %8, align 8
  %161 = load i32, i32* @WSM_START_SCAN_REQ_ID, align 4
  %162 = load i32, i32* @WSM_CMD_TIMEOUT, align 4
  %163 = call i32 @wsm_cmd_send(%struct.cw1200_common* %159, %struct.wsm_buf* %160, i32* null, i32 %161, i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %165 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %164)
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %3, align 4
  br label %172

167:                                              ; No predecessors!
  %168 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %169 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %168)
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %167, %158, %31, %23, %15
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @WSM_PUT8(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT32(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT16(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT(%struct.wsm_buf*, i32*, i32) #1

declare dso_local i32 @wsm_cmd_send(%struct.cw1200_common*, %struct.wsm_buf*, i32*, i32, i32) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
