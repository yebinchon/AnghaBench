; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_check_validity.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_check_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.afs_volume* }
%struct.afs_volume = type { i32 }
%struct.afs_cb_interest = type { i32 }
%struct.afs_server = type { i32 }

@afs_cb_break_no_break = common dso_local global i32 0, align 4
@AFS_VNODE_CB_PROMISED = common dso_local global i32 0, align 4
@afs_cb_break_for_vsbreak = common dso_local global i32 0, align 4
@AFS_VNODE_ZAP_DATA = common dso_local global i32 0, align 4
@afs_cb_break_for_zap = common dso_local global i32 0, align 4
@afs_cb_break_for_lapsed = common dso_local global i32 0, align 4
@AFS_VNODE_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_check_validity(%struct.afs_vnode* %0) #0 {
  %2 = alloca %struct.afs_vnode*, align 8
  %3 = alloca %struct.afs_cb_interest*, align 8
  %4 = alloca %struct.afs_server*, align 8
  %5 = alloca %struct.afs_volume*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %2, align 8
  %13 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %14 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %13, i32 0, i32 8
  %15 = load %struct.afs_volume*, %struct.afs_volume** %14, align 8
  store %struct.afs_volume* %15, %struct.afs_volume** %5, align 8
  %16 = load i32, i32* @afs_cb_break_no_break, align 4
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @ktime_get_real_seconds()
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %102, %1
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %20 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %19, i32 0, i32 4
  %21 = call i32 @read_seqbegin_or_lock(i32* %20, i32* %12)
  %22 = load %struct.afs_volume*, %struct.afs_volume** %5, align 8
  %23 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @READ_ONCE(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @AFS_VNODE_CB_PROMISED, align 4
  %30 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %31 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %30, i32 0, i32 6
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %89

34:                                               ; preds = %18
  %35 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %36 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @rcu_dereference(i32 %37)
  %39 = bitcast i8* %38 to %struct.afs_cb_interest*
  store %struct.afs_cb_interest* %39, %struct.afs_cb_interest** %3, align 8
  %40 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %3, align 8
  %41 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @rcu_dereference(i32 %42)
  %44 = bitcast i8* %43 to %struct.afs_server*
  store %struct.afs_server* %44, %struct.afs_server** %4, align 8
  %45 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %46 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @READ_ONCE(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %50 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %34
  %55 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %56 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54, %34
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %63 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %66 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @afs_cb_break_for_vsbreak, align 4
  store i32 %67, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %88

68:                                               ; preds = %54
  %69 = load i32, i32* @AFS_VNODE_ZAP_DATA, align 4
  %70 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %71 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %70, i32 0, i32 6
  %72 = call i64 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @afs_cb_break_for_zap, align 4
  store i32 %75, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %87

76:                                               ; preds = %68
  %77 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %78 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 10
  %81 = load i32, i32* %7, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @afs_cb_break_for_lapsed, align 4
  store i32 %84, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %86

85:                                               ; preds = %76
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %83
  br label %87

87:                                               ; preds = %86, %74
  br label %88

88:                                               ; preds = %87, %60
  br label %101

89:                                               ; preds = %18
  %90 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %91 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %92 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %91, i32 0, i32 6
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 1, i32* %8, align 4
  br label %100

96:                                               ; preds = %89
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %99 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %95
  br label %101

101:                                              ; preds = %100, %88
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %104 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %103, i32 0, i32 4
  %105 = load i32, i32* %12, align 4
  %106 = call i64 @need_seqretry(i32* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %18, label %108

108:                                              ; preds = %102
  %109 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %110 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %109, i32 0, i32 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @done_seqretry(i32* %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @afs_cb_break_no_break, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %108
  %117 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %118 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %117, i32 0, i32 4
  %119 = call i32 @write_seqlock(i32* %118)
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %122 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @__afs_break_callback(%struct.afs_vnode* %126, i32 %127)
  br label %134

129:                                              ; preds = %116
  %130 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %131 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %130, i32 0, i32 5
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @trace_afs_cb_miss(i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %125
  %135 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %136 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %135, i32 0, i32 4
  %137 = call i32 @write_sequnlock(i32* %136)
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %134, %108
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @read_seqbegin_or_lock(i32*, i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @need_seqretry(i32*, i32) #1

declare dso_local i32 @done_seqretry(i32*, i32) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @__afs_break_callback(%struct.afs_vnode*, i32) #1

declare dso_local i32 @trace_afs_cb_miss(i32*, i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
