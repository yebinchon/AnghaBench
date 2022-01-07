; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_est.c_uwb_est_get_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_est.c_uwb_est_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_est = type { i64, i32, i32, i32, %struct.uwb_est_entry* }
%struct.uwb_est_entry = type { i64, i32, i32 }
%struct.uwb_rceb = type { i32 }

@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"EST %p 0x%04x/%04x/%04x[%u]: event %u out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"EST %p 0x%04x/%04x/%04x[%u]: event %u unknown\0A\00", align 1
@ENOSPC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"EST %p 0x%04x/%04x/%04x[%u]: not enough data to read extra size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uwb_rc*, %struct.uwb_est*, i64, %struct.uwb_rceb*, i64)* @uwb_est_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uwb_est_get_size(%struct.uwb_rc* %0, %struct.uwb_est* %1, i64 %2, %struct.uwb_rceb* %3, i64 %4) #0 {
  %6 = alloca %struct.uwb_rc*, align 8
  %7 = alloca %struct.uwb_est*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uwb_rceb*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.uwb_est_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %6, align 8
  store %struct.uwb_est* %1, %struct.uwb_est** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.uwb_rceb* %3, %struct.uwb_rceb** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  %18 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %13, align 8
  %20 = load i64, i64* @ENOENT, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %24 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %5
  %28 = load %struct.device*, %struct.device** %13, align 8
  %29 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %30 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %31 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %34 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %37 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %40 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 (%struct.device*, i8*, %struct.uwb_est*, i32, i32, i32, i64, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.uwb_est* %29, i32 %32, i32 %35, i32 %38, i64 %41, i64 %42)
  br label %153

44:                                               ; preds = %5
  %45 = load i64, i64* @ENOENT, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %12, align 8
  %47 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %48 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %47, i32 0, i32 4
  %49 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.uwb_est_entry, %struct.uwb_est_entry* %49, i64 %50
  store %struct.uwb_est_entry* %51, %struct.uwb_est_entry** %14, align 8
  %52 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %14, align 8
  %53 = getelementptr inbounds %struct.uwb_est_entry, %struct.uwb_est_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %44
  %57 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %14, align 8
  %58 = getelementptr inbounds %struct.uwb_est_entry, %struct.uwb_est_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %13, align 8
  %63 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %64 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %65 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %68 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %71 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %74 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 (%struct.device*, i8*, %struct.uwb_est*, i32, i32, i32, i64, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.uwb_est* %63, i32 %66, i32 %69, i32 %72, i64 %75, i64 %76)
  br label %153

78:                                               ; preds = %56, %44
  %79 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %14, align 8
  %80 = getelementptr inbounds %struct.uwb_est_entry, %struct.uwb_est_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %14, align 8
  %86 = getelementptr inbounds %struct.uwb_est_entry, %struct.uwb_est_entry* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %12, align 8
  br label %152

88:                                               ; preds = %78
  %89 = load %struct.uwb_rceb*, %struct.uwb_rceb** %9, align 8
  %90 = bitcast %struct.uwb_rceb* %89 to i8*
  store i8* %90, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, -1
  store i32 %92, i32* %11, align 4
  %93 = load i64, i64* @ENOSPC, align 8
  %94 = sub i64 0, %93
  store i64 %94, i64* %12, align 8
  %95 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %14, align 8
  %96 = getelementptr inbounds %struct.uwb_est_entry, %struct.uwb_est_entry* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %100 [
    i32 129, label %98
    i32 128, label %99
  ]

98:                                               ; preds = %88
  store i64 4, i64* %16, align 8
  br label %102

99:                                               ; preds = %88
  store i64 8, i64* %16, align 8
  br label %102

100:                                              ; preds = %88
  %101 = call i32 (...) @BUG()
  br label %102

102:                                              ; preds = %100, %99, %98
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %16, align 8
  %106 = add i64 %104, %105
  %107 = load i64, i64* %10, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %102
  %110 = load %struct.device*, %struct.device** %13, align 8
  %111 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %112 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %113 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %116 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %119 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.uwb_est*, %struct.uwb_est** %7, align 8
  %122 = getelementptr inbounds %struct.uwb_est, %struct.uwb_est* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (%struct.device*, i8*, %struct.uwb_est*, i32, i32, i32, i64, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), %struct.uwb_est* %111, i32 %114, i32 %117, i32 %120, i64 %123)
  br label %153

125:                                              ; preds = %102
  %126 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %14, align 8
  %127 = getelementptr inbounds %struct.uwb_est_entry, %struct.uwb_est_entry* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %12, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i8*, i8** %15, align 8
  %131 = zext i32 %129 to i64
  %132 = getelementptr i8, i8* %130, i64 %131
  store i8* %132, i8** %15, align 8
  %133 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %14, align 8
  %134 = getelementptr inbounds %struct.uwb_est_entry, %struct.uwb_est_entry* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %149 [
    i32 129, label %136
    i32 128, label %143
  ]

136:                                              ; preds = %125
  %137 = load i8*, i8** %15, align 8
  %138 = bitcast i8* %137 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @le16_to_cpu(i32 %139)
  %141 = load i64, i64* %12, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %12, align 8
  br label %151

143:                                              ; preds = %125
  %144 = load i8*, i8** %15, align 8
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %12, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %12, align 8
  br label %151

149:                                              ; preds = %125
  %150 = call i32 (...) @BUG()
  br label %151

151:                                              ; preds = %149, %143, %136
  br label %152

152:                                              ; preds = %151, %84
  br label %153

153:                                              ; preds = %152, %109, %61, %27
  %154 = load i64, i64* %12, align 8
  ret i64 %154
}

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.uwb_est*, i32, i32, i32, i64, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
