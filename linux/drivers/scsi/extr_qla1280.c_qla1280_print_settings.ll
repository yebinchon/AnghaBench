; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_print_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_print_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"qla1280 : initiator scsi id bus[0]=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"qla1280 : initiator scsi id bus[1]=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"qla1280 : bus reset delay[0]=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"qla1280 : bus reset delay[1]=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"qla1280 : retry count[0]=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"qla1280 : retry delay[0]=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"qla1280 : retry count[1]=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"qla1280 : retry delay[1]=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"qla1280 : async data setup time[0]=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"qla1280 : async data setup time[1]=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"qla1280 : req/ack active negation[0]=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"qla1280 : req/ack active negation[1]=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"qla1280 : data line active negation[0]=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"qla1280 : data line active negation[1]=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"qla1280 : disable loading risc code=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"qla1280 : enable 64bit addressing=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"qla1280 : selection timeout limit[0]=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"qla1280 : selection timeout limit[1]=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"qla1280 : max queue depth[0]=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"qla1280 : max queue depth[1]=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvram*)* @qla1280_print_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla1280_print_settings(%struct.nvram* %0) #0 {
  %2 = alloca %struct.nvram*, align 8
  store %struct.nvram* %0, %struct.nvram** %2, align 8
  %3 = load %struct.nvram*, %struct.nvram** %2, align 8
  %4 = getelementptr inbounds %struct.nvram, %struct.nvram* %3, i32 0, i32 0
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.nvram*, %struct.nvram** %2, align 8
  %12 = getelementptr inbounds %struct.nvram, %struct.nvram* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.nvram*, %struct.nvram** %2, align 8
  %20 = getelementptr inbounds %struct.nvram, %struct.nvram* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load %struct.nvram*, %struct.nvram** %2, align 8
  %27 = getelementptr inbounds %struct.nvram, %struct.nvram* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load %struct.nvram*, %struct.nvram** %2, align 8
  %34 = getelementptr inbounds %struct.nvram, %struct.nvram* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load %struct.nvram*, %struct.nvram** %2, align 8
  %41 = getelementptr inbounds %struct.nvram, %struct.nvram* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = load %struct.nvram*, %struct.nvram** %2, align 8
  %48 = getelementptr inbounds %struct.nvram, %struct.nvram* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = load %struct.nvram*, %struct.nvram** %2, align 8
  %55 = getelementptr inbounds %struct.nvram, %struct.nvram* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  %61 = load %struct.nvram*, %struct.nvram** %2, align 8
  %62 = getelementptr inbounds %struct.nvram, %struct.nvram* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load %struct.nvram*, %struct.nvram** %2, align 8
  %70 = getelementptr inbounds %struct.nvram, %struct.nvram* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  %77 = load %struct.nvram*, %struct.nvram** %2, align 8
  %78 = getelementptr inbounds %struct.nvram, %struct.nvram* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %83)
  %85 = load %struct.nvram*, %struct.nvram** %2, align 8
  %86 = getelementptr inbounds %struct.nvram, %struct.nvram* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %91)
  %93 = load %struct.nvram*, %struct.nvram** %2, align 8
  %94 = getelementptr inbounds %struct.nvram, %struct.nvram* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %99)
  %101 = load %struct.nvram*, %struct.nvram** %2, align 8
  %102 = getelementptr inbounds %struct.nvram, %struct.nvram* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %107)
  %109 = load %struct.nvram*, %struct.nvram** %2, align 8
  %110 = getelementptr inbounds %struct.nvram, %struct.nvram* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %112)
  %114 = load %struct.nvram*, %struct.nvram** %2, align 8
  %115 = getelementptr inbounds %struct.nvram, %struct.nvram* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %117)
  %119 = load %struct.nvram*, %struct.nvram** %2, align 8
  %120 = getelementptr inbounds %struct.nvram, %struct.nvram* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %124)
  %126 = load %struct.nvram*, %struct.nvram** %2, align 8
  %127 = getelementptr inbounds %struct.nvram, %struct.nvram* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 %131)
  %133 = load %struct.nvram*, %struct.nvram** %2, align 8
  %134 = getelementptr inbounds %struct.nvram, %struct.nvram* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %138)
  %140 = load %struct.nvram*, %struct.nvram** %2, align 8
  %141 = getelementptr inbounds %struct.nvram, %struct.nvram* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 %145)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
