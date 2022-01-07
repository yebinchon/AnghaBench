; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_path_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_path_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_iucv_private = type { i64, i8*, i8*, i32, i32, %struct.iucv_path* }
%struct.iucv_path = type { i32, i32 }

@__const.hvc_iucv_path_pending.wildcard = private unnamed_addr constant [9 x i8] c"lnxhvc  \00", align 1
@hvc_iucv_devices = common dso_local global i32 0, align 4
@hvc_iucv_table = common dso_local global %struct.hvc_iucv_private** null, align 8
@IUCV_DISCONN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@hvc_iucv_filter_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"A connection request from z/VM user ID %s was refused\0A\00", align 1
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@hvc_iucv_handler = common dso_local global i32 0, align 4
@IUCV_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iucv_path*, i8*, i8*)* @hvc_iucv_path_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_iucv_path_pending(%struct.iucv_path* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iucv_path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hvc_iucv_private*, align 8
  %9 = alloca %struct.hvc_iucv_private*, align 8
  %10 = alloca [9 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca [9 x i8], align 1
  store %struct.iucv_path* %0, %struct.iucv_path** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = bitcast [9 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.hvc_iucv_path_pending.wildcard, i32 0, i32 0), i64 9, i1 false)
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %18 = call i32 @ASCEBC(i8* %17, i32 9)
  %19 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @memcmp(i8* %19, i8* %20, i32 8)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %13, align 4
  store %struct.hvc_iucv_private* null, %struct.hvc_iucv_private** %8, align 8
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %71, %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @hvc_iucv_devices, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load %struct.hvc_iucv_private**, %struct.hvc_iucv_private*** @hvc_iucv_table, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %30, i64 %32
  %34 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %33, align 8
  store %struct.hvc_iucv_private* %34, %struct.hvc_iucv_private** %9, align 8
  %35 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %9, align 8
  %36 = icmp ne %struct.hvc_iucv_private* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %71

38:                                               ; preds = %29
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %9, align 8
  %43 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %42, i32 0, i32 3
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %9, align 8
  %46 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IUCV_DISCONN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %9, align 8
  store %struct.hvc_iucv_private* %51, %struct.hvc_iucv_private** %8, align 8
  br label %52

52:                                               ; preds = %50, %41
  %53 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %9, align 8
  %54 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %53, i32 0, i32 3
  %55 = call i32 @spin_unlock(i32* %54)
  br label %66

56:                                               ; preds = %38
  %57 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %9, align 8
  %58 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @memcmp(i8* %59, i8* %60, i32 8)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %9, align 8
  store %struct.hvc_iucv_private* %64, %struct.hvc_iucv_private** %8, align 8
  br label %65

65:                                               ; preds = %63, %56
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %68 = icmp ne %struct.hvc_iucv_private* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %74

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %25

74:                                               ; preds = %69, %25
  %75 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %76 = icmp ne %struct.hvc_iucv_private* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %169

80:                                               ; preds = %74
  %81 = call i32 @read_lock(i32* @hvc_iucv_filter_lock)
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @hvc_iucv_filter_connreq(i8* %82)
  store i32 %83, i32* %12, align 4
  %84 = call i32 @read_unlock(i32* @hvc_iucv_filter_lock)
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @iucv_path_sever(%struct.iucv_path* %88, i8* %89)
  %91 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %92 = call i32 @iucv_path_free(%struct.iucv_path* %91)
  %93 = getelementptr inbounds [9 x i8], [9 x i8]* %15, i64 0, i64 0
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @memcpy(i8* %93, i8* %94, i32 8)
  %96 = getelementptr inbounds [9 x i8], [9 x i8]* %15, i64 0, i64 8
  store i8 0, i8* %96, align 1
  %97 = getelementptr inbounds [9 x i8], [9 x i8]* %15, i64 0, i64 0
  %98 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %97)
  store i32 0, i32* %4, align 4
  br label %169

99:                                               ; preds = %80
  %100 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %101 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %100, i32 0, i32 3
  %102 = call i32 @spin_lock(i32* %101)
  %103 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %104 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @IUCV_DISCONN, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @iucv_path_sever(%struct.iucv_path* %109, i8* %110)
  %112 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %113 = call i32 @iucv_path_free(%struct.iucv_path* %112)
  br label %165

114:                                              ; preds = %99
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 8
  %118 = call i32 @memcpy(i8* %115, i8* %117, i32 8)
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %120 = getelementptr inbounds i8, i8* %119, i64 8
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @memcpy(i8* %120, i8* %121, i32 8)
  %123 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %124 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %123, i32 0, i32 0
  store i32 65535, i32* %124, align 4
  %125 = load i32, i32* @IUCV_IPRMDATA, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %128 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %133 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %134 = call i32 @iucv_path_accept(%struct.iucv_path* %131, i32* @hvc_iucv_handler, i8* %132, %struct.hvc_iucv_private* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %114
  %138 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @iucv_path_sever(%struct.iucv_path* %138, i8* %139)
  %141 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %142 = call i32 @iucv_path_free(%struct.iucv_path* %141)
  br label %165

143:                                              ; preds = %114
  %144 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %145 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %146 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %145, i32 0, i32 5
  store %struct.iucv_path* %144, %struct.iucv_path** %146, align 8
  %147 = load i64, i64* @IUCV_CONNECTED, align 8
  %148 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %149 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %151 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @memcpy(i8* %152, i8* %153, i32 8)
  %155 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %156 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 8
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 8
  %161 = call i32 @memcpy(i8* %158, i8* %160, i32 8)
  %162 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %163 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %162, i32 0, i32 4
  %164 = call i32 @schedule_delayed_work(i32* %163, i32 5)
  br label %165

165:                                              ; preds = %143, %137, %108
  %166 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %167 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %166, i32 0, i32 3
  %168 = call i32 @spin_unlock(i32* %167)
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %165, %87, %77
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ASCEBC(i8*, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @read_lock(i32*) #2

declare dso_local i32 @hvc_iucv_filter_connreq(i8*) #2

declare dso_local i32 @read_unlock(i32*) #2

declare dso_local i32 @iucv_path_sever(%struct.iucv_path*, i8*) #2

declare dso_local i32 @iucv_path_free(%struct.iucv_path*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @pr_info(i8*, i8*) #2

declare dso_local i32 @iucv_path_accept(%struct.iucv_path*, i32*, i8*, %struct.hvc_iucv_private*) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
