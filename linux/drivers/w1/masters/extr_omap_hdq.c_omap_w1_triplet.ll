; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_w1_triplet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_w1_triplet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i32, i32 }

@OMAP_HDQ_CTRL_STATUS_SINGLE = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_GO = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not acquire mutex\0A\00", align 1
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@hdq_wait_queue = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS_RXCOMPLETE = common dso_local global i32 0, align 4
@OMAP_HDQ_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"RX wait elapsed\0A\00", align 1
@OMAP_HDQ_RX_DATA = common dso_local global i32 0, align 4
@OMAP_HDQ_TX_DATA = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS_TXCOMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"TX wait elapsed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @omap_w1_triplet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_w1_triplet(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdq_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 3, i32* %8, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.hdq_data*
  store %struct.hdq_data* %13, %struct.hdq_data** %9, align 8
  %14 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_SINGLE, align 4
  %15 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_GO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @omap_hdq_get(i8* %22)
  %24 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %25 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock_interruptible(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %31 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %150

34:                                               ; preds = %2
  %35 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %36 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @hdq_reg_merge(i8* %37, i32 %38, i32 %41, i32 %42)
  %44 = load i32, i32* @hdq_wait_queue, align 4
  %45 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %46 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OMAP_HDQ_INT_STATUS_RXCOMPLETE, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @OMAP_HDQ_TIMEOUT, align 4
  %51 = call i32 @wait_event_timeout(i32 %44, i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %34
  %55 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %56 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %146

59:                                               ; preds = %34
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* @OMAP_HDQ_RX_DATA, align 4
  %62 = call i32 @hdq_reg_in(i8* %60, i32 %61)
  %63 = and i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %65 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_DIR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @hdq_reg_merge(i8* %66, i32 %67, i32 %70, i32 %71)
  %73 = load i32, i32* @hdq_wait_queue, align 4
  %74 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %75 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @OMAP_HDQ_INT_STATUS_RXCOMPLETE, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @OMAP_HDQ_TIMEOUT, align 4
  %80 = call i32 @wait_event_timeout(i32 %73, i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %59
  %84 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %85 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %146

88:                                               ; preds = %59
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* @OMAP_HDQ_RX_DATA, align 4
  %91 = call i32 @hdq_reg_in(i8* %89, i32 %90)
  %92 = and i32 %91, 1
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 3, i32* %8, align 4
  br label %146

99:                                               ; preds = %95, %88
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 4, i32 0
  store i32 %109, i32* %8, align 4
  br label %116

110:                                              ; preds = %102, %99
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 5, i32 2
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %110, %105
  %117 = load i8*, i8** %3, align 8
  %118 = load i32, i32* @OMAP_HDQ_TX_DATA, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @hdq_reg_out(i8* %117, i32 %118, i32 %119)
  %121 = load i8*, i8** %3, align 8
  %122 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @hdq_reg_merge(i8* %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* @hdq_wait_queue, align 4
  %127 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %128 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @OMAP_HDQ_INT_STATUS_TXCOMPLETE, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @OMAP_HDQ_TIMEOUT, align 4
  %133 = call i32 @wait_event_timeout(i32 %126, i32 %131, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %116
  %137 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %138 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dev_dbg(i32 %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %146

141:                                              ; preds = %116
  %142 = load i8*, i8** %3, align 8
  %143 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %144 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_SINGLE, align 4
  %145 = call i32 @hdq_reg_merge(i8* %142, i32 %143, i32 0, i32 %144)
  br label %146

146:                                              ; preds = %141, %136, %98, %83, %54
  %147 = load %struct.hdq_data*, %struct.hdq_data** %9, align 8
  %148 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %147, i32 0, i32 1
  %149 = call i32 @mutex_unlock(i32* %148)
  br label %150

150:                                              ; preds = %146, %29
  %151 = load i8*, i8** %3, align 8
  %152 = call i32 @omap_hdq_put(i8* %151)
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local i32 @omap_hdq_get(i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @hdq_reg_merge(i8*, i32, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @hdq_reg_in(i8*, i32) #1

declare dso_local i32 @hdq_reg_out(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @omap_hdq_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
