; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_recover_master_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_recover_master_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32 }
%struct.dlm_rcom = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rcom_lock = type { i8*, i8*, i32, i32, i32, i32, i64 }
%struct.dlm_rsb = type { i32, i32 }
%struct.dlm_lkb = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@R_RECEIVE_RECOVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"dlm_recover_master_copy remote %d %x not dir\00", align 1
@EBADR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@RSB_RECOVER_GRANT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"dlm_recover_master_copy remote %d %x error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_recover_master_copy(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.rcom_lock*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca %struct.dlm_lkb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %11 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rcom_lock*
  store %struct.rcom_lock* %14, %struct.rcom_lock** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %16 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %20 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %136

26:                                               ; preds = %2
  %27 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %28 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %32 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %33 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %36 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @R_RECEIVE_RECOVER, align 4
  %41 = call i32 @find_rsb(%struct.dlm_ls* %31, i32 %34, i32 %38, i32 %39, i32 %40, %struct.dlm_rsb** %6)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %136

45:                                               ; preds = %26
  %46 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %47 = call i32 @lock_rsb(%struct.dlm_rsb* %46)
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %49 = call i64 @dlm_no_directory(%struct.dlm_ls* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %53 = call i64 @dlm_dir_nodeid(%struct.dlm_rsb* %52)
  %54 = call i64 (...) @dlm_our_nodeid()
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @log_error(%struct.dlm_ls* %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @EBADR, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %131

63:                                               ; preds = %51, %45
  %64 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call %struct.dlm_lkb* @search_remid(%struct.dlm_rsb* %64, i32 %65, i32 %66)
  store %struct.dlm_lkb* %67, %struct.dlm_lkb** %7, align 8
  %68 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %69 = icmp ne %struct.dlm_lkb* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EEXIST, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %119

73:                                               ; preds = %63
  %74 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %75 = call i32 @create_lkb(%struct.dlm_ls* %74, %struct.dlm_lkb** %7)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %131

79:                                               ; preds = %73
  %80 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %81 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %82 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %83 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %84 = call i32 @receive_rcom_lock_args(%struct.dlm_ls* %80, %struct.dlm_lkb* %81, %struct.dlm_rsb* %82, %struct.dlm_rcom* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %89 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %90 = call i32 @__put_lkb(%struct.dlm_ls* %88, %struct.dlm_lkb* %89)
  br label %131

91:                                               ; preds = %79
  %92 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %93 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %94 = call i32 @attach_lkb(%struct.dlm_rsb* %92, %struct.dlm_lkb* %93)
  %95 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %96 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %97 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %98 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @add_lkb(%struct.dlm_rsb* %95, %struct.dlm_lkb* %96, i32 %99)
  store i32 0, i32* %10, align 4
  %101 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %102 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %106 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %105, i32 0, i32 1
  %107 = call i32 @list_empty(i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %91
  %110 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %111 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %110, i32 0, i32 0
  %112 = call i32 @list_empty(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109, %91
  %115 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %116 = load i32, i32* @RSB_RECOVER_GRANT, align 4
  %117 = call i32 @rsb_set_flag(%struct.dlm_rsb* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %70
  %120 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %121 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %125 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %127 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %130 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %119, %87, %78, %56
  %132 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %133 = call i32 @unlock_rsb(%struct.dlm_rsb* %132)
  %134 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %135 = call i32 @put_rsb(%struct.dlm_rsb* %134)
  br label %136

136:                                              ; preds = %131, %44, %23
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @EEXIST, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @log_rinfo(%struct.dlm_ls* %145, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %144, %139, %136
  %151 = load i32, i32* %10, align 4
  %152 = call i8* @cpu_to_le32(i32 %151)
  %153 = load %struct.rcom_lock*, %struct.rcom_lock** %5, align 8
  %154 = getelementptr inbounds %struct.rcom_lock, %struct.rcom_lock* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %10, align 4
  ret i32 %155
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @find_rsb(%struct.dlm_ls*, i32, i32, i32, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i64 @dlm_no_directory(%struct.dlm_ls*) #1

declare dso_local i64 @dlm_dir_nodeid(%struct.dlm_rsb*) #1

declare dso_local i64 @dlm_our_nodeid(...) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, i32) #1

declare dso_local %struct.dlm_lkb* @search_remid(%struct.dlm_rsb*, i32, i32) #1

declare dso_local i32 @create_lkb(%struct.dlm_ls*, %struct.dlm_lkb**) #1

declare dso_local i32 @receive_rcom_lock_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_rsb*, %struct.dlm_rcom*) #1

declare dso_local i32 @__put_lkb(%struct.dlm_ls*, %struct.dlm_lkb*) #1

declare dso_local i32 @attach_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @add_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rsb_set_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @log_rinfo(%struct.dlm_ls*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
