; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_writev_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_writev_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_credits = type { i32, i32 }
%struct.mid_q_entry = type { i32, i64, %struct.cifs_writedata* }
%struct.cifs_writedata = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@__const.cifs_writev_callback.credits = private unnamed_addr constant %struct.cifs_credits { i32 1, i32 0 }, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@cifsiod_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mid_q_entry*)* @cifs_writev_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_writev_callback(%struct.mid_q_entry* %0) #0 {
  %2 = alloca %struct.mid_q_entry*, align 8
  %3 = alloca %struct.cifs_writedata*, align 8
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.cifs_credits, align 4
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %2, align 8
  %8 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %9 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %8, i32 0, i32 2
  %10 = load %struct.cifs_writedata*, %struct.cifs_writedata** %9, align 8
  store %struct.cifs_writedata* %10, %struct.cifs_writedata** %3, align 8
  %11 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %12 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cifs_tcon* @tlink_tcon(i32 %15)
  store %struct.cifs_tcon* %16, %struct.cifs_tcon** %4, align 8
  %17 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %18 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %6, align 8
  %21 = bitcast %struct.cifs_credits* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.cifs_credits* @__const.cifs_writev_callback.credits to i8*), i64 8, i1 false)
  %22 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %23 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %82 [
    i32 129, label %25
    i32 130, label %77
    i32 128, label %77
  ]

25:                                               ; preds = %1
  %26 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %28 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cifs_check_receive(%struct.mid_q_entry* %26, i32 %31, i32 0)
  %33 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %34 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %36 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %87

40:                                               ; preds = %25
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 16
  store i32 %46, i32* %5, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %55 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ugt i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 65535
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %40
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %64 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  %70 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %71 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %76

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %75 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %67
  br label %87

77:                                               ; preds = %1, %1
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  %80 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %81 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %87

82:                                               ; preds = %1
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  %85 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %86 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %82, %77, %76, %39
  %88 = load i32, i32* @cifsiod_wq, align 4
  %89 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %90 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %89, i32 0, i32 1
  %91 = call i32 @queue_work(i32 %88, i32* %90)
  %92 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %93 = call i32 @DeleteMidQEntry(%struct.mid_q_entry* %92)
  %94 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %95 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @add_credits(i32 %98, %struct.cifs_credits* %7, i32 0)
  ret void
}

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cifs_check_receive(%struct.mid_q_entry*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @DeleteMidQEntry(%struct.mid_q_entry*) #1

declare dso_local i32 @add_credits(i32, %struct.cifs_credits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
