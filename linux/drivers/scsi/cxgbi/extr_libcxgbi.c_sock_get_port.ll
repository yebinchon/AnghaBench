; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_sock_get_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_sock_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_4__, %struct.cxgbi_device* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.cxgbi_device = type { %struct.TYPE_6__**, %struct.cxgbi_ports_map }
%struct.TYPE_6__ = type { i32 }
%struct.cxgbi_ports_map = type { i32, i32, i32, i32, i64, %struct.cxgbi_sock** }

@.str = private unnamed_addr constant [34 x i8] c"cdev 0x%p, p#%u %s, NO port map.\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"source port NON-ZERO %u.\0A\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cdev 0x%p, p#%u %s, ALL ports used.\0A\00", align 1
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cdev 0x%p, p#%u %s, p %u, %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cdev 0x%p, p#%u %s, next %u?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*)* @sock_get_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_get_port(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca %struct.cxgbi_device*, align 8
  %5 = alloca %struct.cxgbi_ports_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  %9 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %10 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %9, i32 0, i32 4
  %11 = load %struct.cxgbi_device*, %struct.cxgbi_device** %10, align 8
  store %struct.cxgbi_device* %11, %struct.cxgbi_device** %4, align 8
  %12 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %13 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %12, i32 0, i32 1
  store %struct.cxgbi_ports_map* %13, %struct.cxgbi_ports_map** %5, align 8
  %14 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %15 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %1
  %19 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %21 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %24 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %19, i64 %22, i32 %32)
  %34 = load i32, i32* @EADDRNOTAVAIL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %199

36:                                               ; preds = %1
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %38 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %44 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64* %45, i64** %8, align 8
  br label %50

46:                                               ; preds = %36
  %47 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %48 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i64* %49, i64** %8, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ntohs(i64 %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.cxgbi_device*
  %60 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_device* %59)
  %61 = load i32, i32* @EADDRINUSE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %199

63:                                               ; preds = %50
  %64 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %65 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %64, i32 0, i32 3
  %66 = call i32 @spin_lock_bh(i32* %65)
  %67 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %68 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %71 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %63
  %75 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %76 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %75, i32 0, i32 3
  %77 = call i32 @spin_unlock_bh(i32* %76)
  %78 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %79 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %80 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %83 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %83, align 8
  %85 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %86 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_device* %78, i64 %81, i32 %91)
  %93 = load i32, i32* @EADDRNOTAVAIL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %199

95:                                               ; preds = %63
  %96 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %97 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %7, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %171, %95
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %103 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sge i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %99
  %108 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %109 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %108, i32 0, i32 5
  %110 = load %struct.cxgbi_sock**, %struct.cxgbi_sock*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cxgbi_sock*, %struct.cxgbi_sock** %110, i64 %112
  %114 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %113, align 8
  %115 = icmp ne %struct.cxgbi_sock* %114, null
  br i1 %115, label %170, label %116

116:                                              ; preds = %107
  %117 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %118 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %122 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = call i64 @htons(i64 %126)
  %128 = load i64*, i64** %8, align 8
  store i64 %127, i64* %128, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %131 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %133 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %134 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %133, i32 0, i32 5
  %135 = load %struct.cxgbi_sock**, %struct.cxgbi_sock*** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.cxgbi_sock*, %struct.cxgbi_sock** %135, i64 %137
  store %struct.cxgbi_sock* %132, %struct.cxgbi_sock** %138, align 8
  %139 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %140 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %139, i32 0, i32 3
  %141 = call i32 @spin_unlock_bh(i32* %140)
  %142 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %143 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %142)
  %144 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %145 = shl i32 1, %144
  %146 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %147 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %148 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %151 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %151, align 8
  %153 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %154 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %152, i64 %155
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %161 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %167 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @log_debug(i32 %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_device* %146, i64 %149, i32 %159, i64 %165, i32 %168)
  store i32 0, i32* %2, align 4
  br label %199

170:                                              ; preds = %107
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %99, label %175

175:                                              ; preds = %171
  %176 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %177 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %176, i32 0, i32 3
  %178 = call i32 @spin_unlock_bh(i32* %177)
  %179 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %180 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %181 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %184 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %183, i32 0, i32 0
  %185 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %184, align 8
  %186 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %187 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %185, i64 %188
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %194 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %struct.cxgbi_device* %179, i64 %182, i32 %192, i32 %195)
  %197 = load i32, i32* @EADDRNOTAVAIL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %175, %116, %74, %54, %18
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_device*, ...) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_device*, i64, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i64, i32, i64, i32) #1

declare dso_local i32 @pr_warn(i8*, %struct.cxgbi_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
