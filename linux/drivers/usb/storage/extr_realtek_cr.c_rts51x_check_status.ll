; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_rts51x_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_rts51x_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.rts51x_chip = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"chip->status_len = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @rts51x_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts51x_check_status(%struct.us_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rts51x_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i64], align 16
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rts51x_chip*
  store %struct.rts51x_chip* %12, %struct.rts51x_chip** %6, align 8
  %13 = load %struct.us_data*, %struct.us_data** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 0
  %16 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %17 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %16, i32 0, i32 0
  %18 = call i32 @rts51x_read_status(%struct.us_data* %13, i64 %14, i64* %15, i32 16, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %167

25:                                               ; preds = %2
  %26 = load %struct.us_data*, %struct.us_data** %4, align 8
  %27 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %28 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usb_stor_dbg(%struct.us_data* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %35, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %41 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 8
  %46 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 2
  %47 = load i64, i64* %46, align 16
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 3
  %52 = load i64, i64* %51, align 8
  %53 = or i64 %50, %52
  %54 = trunc i64 %53 to i32
  %55 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %56 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %54, i32* %60, align 4
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 4
  %62 = load i64, i64* %61, align 16
  %63 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %64 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i64 %62, i64* %68, align 8
  %69 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 5
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %72 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i64 %70, i64* %76, align 8
  %77 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 6
  %78 = load i64, i64* %77, align 16
  %79 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %80 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i64 %78, i64* %84, align 8
  %85 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 7
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %87, 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 8
  %91 = load i64, i64* %90, align 16
  %92 = or i64 %89, %91
  %93 = trunc i64 %92 to i32
  %94 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %95 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  store i32 %93, i32* %99, align 8
  %100 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 9
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %103 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 6
  store i64 %101, i64* %107, align 8
  %108 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 10
  %109 = load i64, i64* %108, align 16
  %110 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %111 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 7
  store i64 %109, i64* %115, align 8
  %116 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 11
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %119 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 8
  store i64 %117, i64* %123, align 8
  %124 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 12
  %125 = load i64, i64* %124, align 16
  %126 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %127 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i64, i64* %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 9
  store i64 %125, i64* %131, align 8
  %132 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %133 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 16
  br i1 %135, label %136, label %166

136:                                              ; preds = %25
  %137 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 13
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %140 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 11
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i64 %138, i64* %145, align 8
  %146 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 14
  %147 = load i64, i64* %146, align 16
  %148 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %149 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 10
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  store i64 %147, i64* %155, align 8
  %156 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 15
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.rts51x_chip*, %struct.rts51x_chip** %6, align 8
  %159 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 10
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  store i64 %157, i64* %165, align 8
  br label %166

166:                                              ; preds = %136, %25
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %22
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @rts51x_read_status(%struct.us_data*, i64, i64*, i32, i32*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
