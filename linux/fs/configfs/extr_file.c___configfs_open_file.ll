; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_file.c___configfs_open_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_file.c___configfs_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.configfs_buffer*, %struct.TYPE_6__ }
%struct.configfs_buffer = type { i32, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*, i32, %struct.configfs_attribute*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.configfs_attribute = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.configfs_fragment = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_BIN_ATTR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_ATTR = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32)* @__configfs_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__configfs_open_file(%struct.inode* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.configfs_fragment*, align 8
  %10 = alloca %struct.configfs_attribute*, align 8
  %11 = alloca %struct.configfs_buffer*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %8, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = call %struct.configfs_fragment* @to_frag(%struct.file* %17)
  store %struct.configfs_fragment* %18, %struct.configfs_fragment** %9, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.configfs_buffer* @kzalloc(i32 64, i32 %21)
  store %struct.configfs_buffer* %22, %struct.configfs_buffer** %11, align 8
  %23 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %24 = icmp ne %struct.configfs_buffer* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %224

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.configfs_fragment*, %struct.configfs_fragment** %9, align 8
  %30 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %29, i32 0, i32 0
  %31 = call i32 @down_read(i32* %30)
  %32 = load %struct.configfs_fragment*, %struct.configfs_fragment** %9, align 8
  %33 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %218

38:                                               ; preds = %26
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.dentry*, %struct.dentry** %8, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_8__* @to_item(i32 %43)
  %45 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %46 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %45, i32 0, i32 3
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %48 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  br label %218

52:                                               ; preds = %38
  %53 = load %struct.dentry*, %struct.dentry** %8, align 8
  %54 = call %struct.configfs_attribute* @to_attr(%struct.dentry* %53)
  store %struct.configfs_attribute* %54, %struct.configfs_attribute** %10, align 8
  %55 = load %struct.configfs_attribute*, %struct.configfs_attribute** %10, align 8
  %56 = icmp ne %struct.configfs_attribute* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %213

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @CONFIGFS_ITEM_BIN_ATTR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.dentry*, %struct.dentry** %8, align 8
  %65 = call %struct.TYPE_9__* @to_bin_attr(%struct.dentry* %64)
  %66 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %67 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %66, i32 0, i32 6
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %67, align 8
  %68 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %69 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %68, i32 0, i32 6
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %74 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 8
  br label %79

75:                                               ; preds = %58
  %76 = load %struct.configfs_attribute*, %struct.configfs_attribute** %10, align 8
  %77 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %78 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %77, i32 0, i32 8
  store %struct.configfs_attribute* %76, %struct.configfs_attribute** %78, align 8
  br label %79

79:                                               ; preds = %75, %63
  %80 = load %struct.configfs_attribute*, %struct.configfs_attribute** %10, align 8
  %81 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %84 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  %87 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %88 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @try_module_get(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %79
  br label %213

93:                                               ; preds = %79
  %94 = load i32, i32* @EACCES, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  %96 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %97 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = icmp ne %struct.TYPE_7__* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %93
  br label %208

103:                                              ; preds = %93
  %104 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %105 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %104, i32 0, i32 3
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %112 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 8
  %113 = load %struct.file*, %struct.file** %6, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @FMODE_WRITE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %152

119:                                              ; preds = %103
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @S_IWUGO, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  br label %208

127:                                              ; preds = %119
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @CONFIGFS_ITEM_ATTR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.configfs_attribute*, %struct.configfs_attribute** %10, align 8
  %134 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  br label %208

138:                                              ; preds = %132, %127
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @CONFIGFS_ITEM_BIN_ATTR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %145 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %144, i32 0, i32 6
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  br label %208

151:                                              ; preds = %143, %138
  br label %152

152:                                              ; preds = %151, %103
  %153 = load %struct.file*, %struct.file** %6, align 8
  %154 = getelementptr inbounds %struct.file, %struct.file* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @FMODE_READ, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %192

159:                                              ; preds = %152
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @S_IRUGO, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %159
  br label %208

167:                                              ; preds = %159
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @CONFIGFS_ITEM_ATTR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.configfs_attribute*, %struct.configfs_attribute** %10, align 8
  %174 = getelementptr inbounds %struct.configfs_attribute, %struct.configfs_attribute* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %172
  br label %208

178:                                              ; preds = %172, %167
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @CONFIGFS_ITEM_BIN_ATTR, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %185 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %184, i32 0, i32 6
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  br label %208

191:                                              ; preds = %183, %178
  br label %192

192:                                              ; preds = %191, %152
  %193 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %194 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %193, i32 0, i32 5
  %195 = call i32 @mutex_init(i32* %194)
  %196 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %197 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  %198 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %199 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %198, i32 0, i32 1
  store i32 0, i32* %199, align 4
  %200 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %201 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %200, i32 0, i32 2
  store i32 0, i32* %201, align 8
  %202 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %203 = load %struct.file*, %struct.file** %6, align 8
  %204 = getelementptr inbounds %struct.file, %struct.file* %203, i32 0, i32 1
  store %struct.configfs_buffer* %202, %struct.configfs_buffer** %204, align 8
  %205 = load %struct.configfs_fragment*, %struct.configfs_fragment** %9, align 8
  %206 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %205, i32 0, i32 0
  %207 = call i32 @up_read(i32* %206)
  store i32 0, i32* %4, align 4
  br label %226

208:                                              ; preds = %190, %177, %166, %150, %137, %126, %102
  %209 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %210 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @module_put(i32 %211)
  br label %213

213:                                              ; preds = %208, %92, %57
  %214 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %215 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %214, i32 0, i32 3
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = call i32 @config_item_put(%struct.TYPE_8__* %216)
  br label %218

218:                                              ; preds = %213, %51, %37
  %219 = load %struct.configfs_fragment*, %struct.configfs_fragment** %9, align 8
  %220 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %219, i32 0, i32 0
  %221 = call i32 @up_read(i32* %220)
  %222 = load %struct.configfs_buffer*, %struct.configfs_buffer** %11, align 8
  %223 = call i32 @kfree(%struct.configfs_buffer* %222)
  br label %224

224:                                              ; preds = %218, %25
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %224, %192
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local %struct.configfs_fragment* @to_frag(%struct.file*) #1

declare dso_local %struct.configfs_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_8__* @to_item(i32) #1

declare dso_local %struct.configfs_attribute* @to_attr(%struct.dentry*) #1

declare dso_local %struct.TYPE_9__* @to_bin_attr(%struct.dentry*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @config_item_put(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.configfs_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
