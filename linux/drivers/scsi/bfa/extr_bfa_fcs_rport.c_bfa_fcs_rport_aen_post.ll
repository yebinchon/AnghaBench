; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_aen_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_aen_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { %struct.TYPE_14__*, i32, %struct.bfa_fcs_lport_s* }
%struct.TYPE_14__ = type { i32 }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.bfa_rport_aen_data_s = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.bfad_s = type { i32 }
%struct.bfa_aen_entry_s = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i8*, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@BFA_RPORT_AEN_QOS_PRIO = common dso_local global i32 0, align 4
@BFA_RPORT_AEN_QOS_FLOWID = common dso_local global i32 0, align 4
@BFA_AEN_CAT_RPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32, %struct.bfa_rport_aen_data_s*)* @bfa_fcs_rport_aen_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_aen_post(%struct.bfa_fcs_rport_s* %0, i32 %1, %struct.bfa_rport_aen_data_s* %2) #0 {
  %4 = alloca %struct.bfa_fcs_rport_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfa_rport_aen_data_s*, align 8
  %7 = alloca %struct.bfa_fcs_lport_s*, align 8
  %8 = alloca %struct.bfad_s*, align 8
  %9 = alloca %struct.bfa_aen_entry_s*, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bfa_rport_aen_data_s* %2, %struct.bfa_rport_aen_data_s** %6, align 8
  %10 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %10, i32 0, i32 2
  %12 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %11, align 8
  store %struct.bfa_fcs_lport_s* %12, %struct.bfa_fcs_lport_s** %7, align 8
  %13 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bfad_s*
  store %struct.bfad_s* %18, %struct.bfad_s** %8, align 8
  %19 = load %struct.bfad_s*, %struct.bfad_s** %8, align 8
  %20 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %9, align 8
  %21 = call i32 @bfad_get_aen_entry(%struct.bfad_s* %19, %struct.bfa_aen_entry_s* %20)
  %22 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %9, align 8
  %23 = icmp ne %struct.bfa_aen_entry_s* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %101

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BFA_RPORT_AEN_QOS_PRIO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.bfa_rport_aen_data_s*, %struct.bfa_rport_aen_data_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfa_rport_aen_data_s, %struct.bfa_rport_aen_data_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %9, align 8
  %35 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  br label %54

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BFA_RPORT_AEN_QOS_FLOWID, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.bfa_rport_aen_data_s*, %struct.bfa_rport_aen_data_s** %6, align 8
  %45 = getelementptr inbounds %struct.bfa_rport_aen_data_s, %struct.bfa_rport_aen_data_s* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %9, align 8
  %49 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %39
  br label %54

54:                                               ; preds = %53, %29
  %55 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %55, i32 0, i32 2
  %57 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %56, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %9, align 8
  %63 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 8
  %66 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call %struct.bfa_fcs_lport_s* @bfa_fcs_get_base_port(%struct.TYPE_14__* %68)
  %70 = call i8* @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %69)
  %71 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %9, align 8
  %72 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i8* %70, i8** %74, align 8
  %75 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %76 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %75, i32 0, i32 2
  %77 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %76, align 8
  %78 = call i8* @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %77)
  %79 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %9, align 8
  %80 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i8* %78, i8** %82, align 8
  %83 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %84 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %9, align 8
  %87 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %9, align 8
  %91 = load %struct.bfad_s*, %struct.bfad_s** %8, align 8
  %92 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %93 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @BFA_AEN_CAT_RPORT, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s* %90, %struct.bfad_s* %91, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %54, %24
  ret void
}

declare dso_local i32 @bfad_get_aen_entry(%struct.bfad_s*, %struct.bfa_aen_entry_s*) #1

declare dso_local i8* @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_get_base_port(%struct.TYPE_14__*) #1

declare dso_local i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s*, %struct.bfad_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
